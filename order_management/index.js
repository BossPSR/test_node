const express = require('express')
const app = express()
const cors = require('cors')
const port = 3003
app.use(cors())

require('dotenv').config()
const url_api = '/api'

// Order Management
const order_management = require('./routes/api/order_management')
app.use(url_api+'/order/management',order_management)


app.listen(port, () => console.log(`Example app listening on port ${port}!`))