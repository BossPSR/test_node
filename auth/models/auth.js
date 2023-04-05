const knex = require('../database/knex.js')

async function checkUser(data){
    return knex.where(data).from('users').first()
}

async function register(data){
    return knex.insert(data).into('users')
}


module.exports = {
    checkUser,
    register,
}