const express = require('express')
const router = express()

const usermanagementcontrollers = require('../../controllers/UserManagementControllers.js')

router.get('/profile', usermanagementcontrollers.userProfile)
router.get('/myorder', usermanagementcontrollers.myOrder)

module.exports = router