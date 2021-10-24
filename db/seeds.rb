# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Property.create(abbreviation: "407", address: "407 W 9th St, Chico, CA 95928")
p2 = Property.create(abbreviation: "341", address: "341 W 9th St, Chico, CA 95928")

t1 = Tenant.create(name: "John Smith", move_in_date: "09/01/2016", property_id: Property.first.id)
t2 = Tenant.create(name: "Jane Smith", move_in_date: "05/01/2017", property_id: Property.first.id)

# b1 = Bill.create(amount: 32, start_date: , end_date: , property_id: p1.id)
