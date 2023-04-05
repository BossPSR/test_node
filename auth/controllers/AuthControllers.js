const bcrypt = require('bcrypt')
const TokenManager = require("../middleware/token_manager.js")
const userModel = require("../models/auth.js")
const response = require("../response/response.js")
const dateformat = require("../helpers/dateformat.js")

async function login(req, res){
    try{
        let userDetail = await userModel.checkUser({'email':req.body.email})
        if (!userDetail) {
            res.status(200).json(response.datanotfound)
            return
        }
        if (userDetail) {
            bcrypt.compare(req.body.password, userDetail.password, function(err, result) {
                if (!result) {
                    res.status(200).json(response.datanotfound)
                    return
                }
                if (result) {
                    let accessToken = TokenManager.getGenerateAccessToken({"id":userDetail.id})
                    res.status(200).json({successful:true,access_token:accessToken})
                    return
                }
            })
        }
    }catch(error){
        res.status(500).json(response.servererror).end()
        return
    }
    
}

async function register(req, res){
    try {
        bcrypt.hash(req.body.password, 10, function(err, hash) {
            let addUser = userModel.register(
                {
                    'first_name':req.body.first_name,
                    'last_name':req.body.last_name,
                    'tel':req.body.tel,
                    'email':req.body.email,
                    'password':hash,
                    'address':req.body.address,
                    'created_at':dateformat.dateTodayFormat(),
                    'updated_at':dateformat.dateTodayFormat(),
                }
            )
            if (addUser) {
                res.status(200).json({successful:true, message:'add data success'})
                return
            }
        })

    }catch (error){
        res.status(500).json(response.servererror).end()
        return
    }
}

module.exports = {
    login,
    register
}