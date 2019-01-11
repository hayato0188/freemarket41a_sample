# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Item.create(id: 1, user_id: 1, name: 'Luke', image: 'sample', description: 'sample', status: 'sample', delivery_fee: 100, pre_date: 'sample', created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
Item.create(id: 2, user_id: 1, name: 'Luke', image: 'sample', description: 'sample', status: 'sample', delivery_fee: 100, pre_date: 'sample', created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
Item.create(id: 3, user_id: 1, name: 'Luke', image: 'sample', description: 'sample', status: 'sample', delivery_fee: 100, pre_date: 'sample', created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
Item.create(id: 4, user_id: 1, name: 'Luke', image: 'sample', description: 'sample', status: 'sample', delivery_fee: 100, pre_date: 'sample', created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
Item.create(id: 5, user_id: 2, name: 'Luke', image: 'sample', description: 'sample', status: 'sample', delivery_fee: 100, pre_date: 'sample', created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
Value.create(id: 2, item_id: 3, price: 500, created_at: "2018-11-12 09:00:05", updated_at: "2018-11-12 09:00:05")
