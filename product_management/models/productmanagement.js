const knex = require('../database/knex.js')

async function productList(){
    return knex.from('products')
}

async function productDetail(data){
    return knex.where(data).from('products').first()
}


module.exports = {
    productList,
    productDetail
}