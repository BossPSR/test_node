const express = require('express')
const router = express()

const productmanagementcontrollers = require('../../controllers/ProductManagementControllers.js')

router.get('/products', productmanagementcontrollers.productList)
router.get('/product/:id', productmanagementcontrollers.productDetail)

module.exports = router