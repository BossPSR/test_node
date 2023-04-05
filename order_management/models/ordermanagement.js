const knex = require('../database/knex.js')

async function orderLast(){
    return knex.from('order').orderBy('id','DESC').first()
}

async function orderCreate(data){
    return knex.insert(data).into('order')
}

async function orderDetailCreate(data){
    return knex.insert(data).into('order_detail')
}

async function orderDetail(data){
    return knex.where(data).from('order').first()
}

async function orderReject(wheretableProps,data){
    return knex.where(wheretableProps).update(data).from('order')
}

async function orderDetailList(data){
    return knex.where(data)
    .select('order_detail.id','order_detail.product_id','products.name as product_name','products.price as product_price','products.short_description as product_short_description','products.description as product_description','order_detail.created_at','order_detail.updated_at',)
    .join('products','order_detail.product_id','products.id')
    .from('order_detail')
}

module.exports = {
    orderLast,
    orderCreate,
    orderDetailCreate,
    orderDetail,
    orderReject,
    orderDetailList
}