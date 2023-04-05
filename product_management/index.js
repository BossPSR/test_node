const express = require('express')
const app = express()
const cors = require('cors')
const port = 3002
app.use(cors())

require('dotenv').config()
const url_api = '/api'

// Product Management
const product_management = require('./routes/api/product_management')
app.use(url_api+'/product/management',product_management)


app.listen(port, () => console.log(`Example app listening on port ${port}!`))