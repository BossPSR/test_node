
const TokenManager = require("../middleware/token_manager.js")
const userModel = require("../models/usermanagement.js")
const response = require("../response/response.js")

async function userProfile(req, res) {
    try {
        let jwtStatus = TokenManager.checkAuthentication(req)
        if (jwtStatus != false) {
            let profile = await userModel.profile({id:jwtStatus.id})
            if (!profile) {
              res.status(200).json(response.datanotfound)
              return 
            }
            res.status(200).json({ successful: true, profile: profile })
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

async function myOrder(req, res){
    try {
        let jwtStatus = TokenManager.checkAuthentication(req)
        if (jwtStatus != false) {
            let myOrder = await userModel.myOrder({'user_id':jwtStatus.id})
            res.status(200).json({ successful: true, myOrder: myOrder })
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
    userProfile,
    myOrder
}