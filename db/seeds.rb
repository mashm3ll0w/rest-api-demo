puts "Seeding data..."

users = User.create([
  {name: "John", email:"john@mail.com", password: "john"},
  {name: "Jack", email:"jack@mail.com", password: "jack"},
  {name: "Joseph", email:"joseph@mail.com", password: "joseph"},
  {name: "Joan", email:"joan@mail.com", password: "joan"},
  {name: "Jill", email:"jill@mail.com", password: "jill"},
])

restaurants = Restaurant.create([
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
  {name:Faker::Restaurant.name, location: Faker::Address.full_address},
])

menu_items = MenuItem.create([
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 1 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 2 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 3 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 4 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 5 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 1 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 2 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 3 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 4 },
  {name:Faker::Food.dish, price:Faker::Number.within(range: 11..99), restaurant_id: 5 },
])


orders = Order.create([
  {menu_item_id: 1, user_id: 1},
  {menu_item_id: 2, user_id: 2},
  {menu_item_id: 3, user_id: 3},
  {menu_item_id: 4, user_id: 4},
  {menu_item_id: 5, user_id: 5},
  {menu_item_id: 6, user_id: 1},
  {menu_item_id: 7, user_id: 2},
  {menu_item_id: 8, user_id: 3},
  {menu_item_id: 9, user_id: 4},
  {menu_item_id: 10, user_id: 5},
])
puts "Done seeding."
