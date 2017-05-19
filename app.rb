require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  erb(:index)
end


get('/store') do
  @stores = Store.all()
  erb(:stores)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

post('/stores') do
  store_name = params.fetch('store_name')
  Store.create({:name => store_name})
  redirect('/stores')
end

get('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i())
  erb(:store)
end

get('/brands') do
  @brands = Brand.all()
  erb(:brands)
end

post('/brands') do
  brand_name = params.fetch('brand_name')
  brand_price = params.fetch('brand_price')
  Brand.create({:name => brand_name, :price => brand_price})
  redirect('/brands')
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch("id").to_i())
  @store = Store.all()
  erb(:brand)
end

delete('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i())
  @store.delete()
  redirect('/store')
end

patch('/stores/:id') do
  name = params.fetch("name")
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => name})
  erb(:store)
end
