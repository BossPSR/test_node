const express = require('express')
const bodyParser = require('body-parser')
const jsonParser = bodyParser.json()
const router = express()

const ordermanagementcontrollers = require('../../controllers/OrderManagementControllers.js')

router.post('/order/create',jsonParser, ordermanagementcontrollers.orderCreate)
router.post('/order/reject/:id',jsonParser, ordermanagementcontrollers.orderReject)
router.get('/order/detail/:id', ordermanagementcontrollers.orderDetail)

module.exports = router