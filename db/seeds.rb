# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: 'Bar-B-Q Plaza')
Restaurant.create(name: 'MK Restaurant')
Restaurant.create(name: 'Shabushi')
Restaurant.create(name: 'Sukishi')
Restaurant.create(name: 'Oishi Ramen')

Dish.create(name: 'Kurobuta Pork Neck Loin')
Dish.create(name: 'Australia Beef')
Dish.create(name: 'Rice')
Dish.create(name: 'Roasted Duck')
Dish.create(name: 'Wagyu A5')
Dish.create(name: 'Jade Noodle')
Dish.create(name: 'Bento Set')
Dish.create(name: 'Tempura Ramen')
Dish.create(name: 'Salmon')
Dish.create(name: 'Premium Bacon')

Restaurant.find(1).dishes << Dish.find(1)
Restaurant.find(2).dishes << Dish.find(1)
Restaurant.find(3).dishes << Dish.find(1)
Restaurant.find(4).dishes << Dish.find(1)

Restaurant.find(1).dishes << Dish.find(2)
Restaurant.find(2).dishes << Dish.find(2)
Restaurant.find(3).dishes << Dish.find(2)
Restaurant.find(4).dishes << Dish.find(2)

Restaurant.find(1).dishes << Dish.find(3)
Restaurant.find(2).dishes << Dish.find(3)
Restaurant.find(3).dishes << Dish.find(3)
Restaurant.find(4).dishes << Dish.find(3)

Restaurant.find(2).dishes << Dish.find(4)

Restaurant.find(1).dishes << Dish.find(5)
Restaurant.find(2).dishes << Dish.find(5)

Restaurant.find(1).dishes << Dish.find(6)
Restaurant.find(2).dishes << Dish.find(6)
Restaurant.find(3).dishes << Dish.find(6)

Restaurant.find(5).dishes << Dish.find(7)

Restaurant.find(4).dishes << Dish.find(8)
Restaurant.find(5).dishes << Dish.find(8)

Restaurant.find(1).dishes << Dish.find(9)
Restaurant.find(2).dishes << Dish.find(9)
Restaurant.find(4).dishes << Dish.find(9)

Restaurant.find(1).dishes << Dish.find(10)
Restaurant.find(2).dishes << Dish.find(10)
