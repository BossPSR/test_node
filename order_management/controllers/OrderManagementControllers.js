const TokenManager = require("../middleware/token_manager.js")
const orderModel = require("../models/ordermanagement.js")
const response = require("../response/response.js")
const dateformat = require("../helpers/dateformat.js")

async function orderCreate(req, res) {
    try {
        let jwtStatus = TokenManager.checkAuthentication(req)
        if (jwtStatus != false) {
            let number_order = '0001'
            let orderLast = await orderModel.orderLast()
            if (orderLast) {
                let str = "" + (parseInt(orderLast.order_number) + 1)
                let pad = "0000"
                number_order = pad.substring(0, pad.length - str.length) + str
            }
            let order_id = await orderModel.orderCreate({
                "order_number":number_order,
                "status":1,
                "user_id":jwtStatus.id,
                'created_at':dateformat.dateTodayFormat(),
                'updated_at':dateformat.dateTodayFormat(),
            })
            const num_id = req.body.product_id.length
            for (let index = 0; index < num_id; index++) {
                await orderModel.orderDetailCreate({
                    "order_id":order_id[0],
                    "product_id":req.body.product_id[index],
                    'created_at':dateformat.dateTodayFormat(),
                    'updated_at':dateformat.dateTodayFormat(),
                })
            }
            res.status(200).json({successful:true, message:'add data success'})
            return
            
        } else {
            res.status(401).json(response.unauthentication)
            return
        }
    } catch (error) {
        res.status(500).json(response.servererror).end()
        return
    }
}

async function orderReject(req, res) {
    try {
        let jwtStatus = TokenManager.checkAuthentication(req)
        if (jwtStatus != false) {
            let orderDetail = await orderModel.orderDetail({'id':req.params.id})
            if (!orderDetail) {
                res.status(200).json(response.datanotfound)
                return
            }
            await orderModel.orderReject(
                {'id':req.params.id},
                {
                    status:0,
                    updated_at: dateformat.dateTodayFormat(),
                }
            )

            res.status(200).json({successful:true, message:'reject data success'})
            return
            
        } else {
            res.status(401).json(response.unauthentication)
            return
        }
    } catch (error) {
        res.status(500).json(response.servererror).end()
        return
    }
}

async function orderDetail(req, res) {
    try {
        let jwtStatus = TokenManager.checkAuthentication(req)
        if (jwtStatus != false) {
            let orderDetail = await orderModel.orderDetail({'id':req.params.id})
            if (!orderDetail) {
                res.status(200).json(response.datanotfound)
                return
            }

            let orderDetailList = await orderModel.orderDetailList({'order_detail.order_id':req.params.id})
            res.status(200).json({successful:true, orderDetail:orderDetail, orderDetailList:orderDetailList})
            return
            
        } else {
            res.status(401).json(response.unauthentication)
            return
        }
    } catch (error) {
        res.status(500).json(response.servererror).end()
        return
    }
}

module.exports = {
    orderCreate,
    orderReject,
    orderDetail
}