const knex = require('../database/knex.js')

async function profile(data){
    return knex.select('id','first_name','last_name','tel','email','address','created_at','updated_at').where(data).from('users').first()
}

async function myOrder(data){
    return knex.where(data).from('order')
}

module.exports = {
    profile,
    myOrder
}