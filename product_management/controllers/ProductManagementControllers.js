
const productModel = require("../models/productmanagement.js")
const response = require("../response/response.js")

async function productList(req, res) {
    try {
        let productList = await productModel.productList() 
        res.status(200).json({ successful: true, productList: productList })
        return
    } catch (error) {
        res.status(500).json(response.servererror).end()
        return
    }
}

async function productDetail(req, res) {
    try {
        let productDetail = await productModel.productDetail({'id':req.params.id})
        if (!productDetail) {
            res.status(200).json(response.datanotfound)
            return
        }
        res.status(200).json({ successful: true, productDetail: productDetail })
        return
    } catch (error) {
        res.status(500).json(response.servererror).end()
        return
    }
}

module.exports = {
    productList,
    productDetail
}