const express = require('express')
const bodyParser = require('body-parser')
const jsonParser = bodyParser.json()
const router = express()

const authcontrollers = require('../../controllers/AuthControllers.js')

router.post('/login',jsonParser, authcontrollers.login)
router.post('/register',jsonParser, authcontrollers.register)

module.exports = router