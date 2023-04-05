const express = require('express')
const app = express()
const cors = require('cors')
const port = 3000
app.use(cors())

require('dotenv').config()
const url_api = '/api'

// Auth
const auth = require('./routes/api/auth')
app.use(url_api+'/auth',auth)


app.listen(port, () => console.log(`Example app listening on port ${port}!`))