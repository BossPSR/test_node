const express = require('express')
const app = express()
const cors = require('cors')
const port = 3001
app.use(cors())

require('dotenv').config()
const url_api = '/api'

// User Management
const user_management = require('./routes/api/user_management')
app.use(url_api+'/user/management',user_management)


app.listen(port, () => console.log(`Example app listening on port ${port}!`))