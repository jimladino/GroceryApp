# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
foods = Foods.create!([
  {id: 7, food_name: "Bagels", cost: "2.50", unit_qty: "6", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 3, food_name: "Bread", cost: "1.99", unit_qty: "Loaf", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 6, food_name: "Chicken Breasts (Skinless)", cost: "3", unit_qty: "Pound", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 11, food_name: "Cold Cereal", cost: "4.00", unit_qty: "Box (18 Oz)", created_at: "2017-06-23 03:29:02", updated_at: "2017-06-23 03:29:02"},
  {id: 1, food_name: "Eggs", cost: "2.99", unit_qty: "12", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 10, food_name: "Flour", cost: "3.00", unit_qty: "Pound", created_at: "2017-06-23 03:25:57", updated_at: "2017-06-23 03:26:09"},
  {id: 13, food_name: "Frozen Waffles", cost: "4.99", unit_qty: "24", created_at: "2017-06-23 03:32:13", updated_at: "2017-06-23 03:32:13"},
  {id: 14, food_name: "Grape Jelly", cost: "3.99", unit_qty: "Jar (10 oz)", created_at: "2017-06-23 03:32:57", updated_at: "2017-06-23 03:32:57"},
  {id: 5, food_name: "Ground Beef", cost: "4.99", unit_qty: "Pound", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 16, food_name: "Hash Browns", cost: "3.99", unit_qty: "10 Oz", created_at: "2017-06-23 03:36:08", updated_at: "2017-06-23 03:36:08"},
  {id: 18, food_name: "Maple Syrup", cost: "5.00", unit_qty: "10 Oz", created_at: "2017-06-23 03:37:16", updated_at: "2017-06-23 03:37:16"},
  {id: 2, food_name: "Milk", cost: "3.19", unit_qty: "Gallon", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 19, food_name: "Mixed Fruit", cost: "5.99", unit_qty: "1 lb", created_at: "2017-06-23 03:38:38", updated_at: "2017-06-23 03:38:38"},
  {id: 20, food_name: "Oatmeal", cost: "2.99", unit_qty: "12 Pack", created_at: "2017-06-23 03:40:07", updated_at: "2017-06-23 03:40:07"},
  {id: 22, food_name: "Olive Oil", cost: "4.99", unit_qty: "Per Jar", created_at: "2017-09-05 03:04:19", updated_at: "2017-09-05 03:04:19"},
  {id: 12, food_name: "Peanut Butter", cost: "2.99", unit_qty: "Jar (16 oz)", created_at: "2017-06-23 03:31:29", updated_at: "2017-06-23 03:31:29"},
  {id: 17, food_name: "Potatoes", cost: "5.00", unit_qty: "10 lbs", created_at: "2017-06-23 03:36:28", updated_at: "2017-06-23 03:36:28"},
  {id: 15, food_name: "Sausage Links", cost: "4.99", unit_qty: "lb", created_at: "2017-06-23 03:33:27", updated_at: "2017-06-23 03:33:27"},
  {id: 4, food_name: "Spaghetti", cost: "1.29", unit_qty: "Pound", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"},
  {id: 21, food_name: "Taco Shells", cost: "4.99", unit_qty: "16", created_at: "2017-06-23 03:42:00", updated_at: "2017-06-23 03:42:00"},
  {id: 8, food_name: "Tomato Sauce", cost: "1", unit_qty: "28 Ounces", created_at: "2017-06-20 03:38:28", updated_at: "2017-06-20 03:38:28"}
])
meals = Meals.create!([
  {id: 4, image: "https://www.sbarro.com/wp-content/uploads/2015/04/12-sbarro-spaghetti-meatballs.jpg", meal_name: "Spaghetti & Meatballs", category: "Dinner", prep_time: "15 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:34:19", servings: "8", food_id: [nil, 4, 5, 8]},
  {id: 5, image: "brunch.jpg", meal_name: "Eggs, Sausage, Hash Browns & Waffles", category: "Brunch", prep_time: "40 Minues", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:37:41", servings: "8", food_id: [nil, 1, 13, 15, 16, 18]},
  {id: 9, image: "http://www.fridaycakenight.com/wp-content/uploads/2015/12/Waffles1-745x1024.jpg", meal_name: "Waffles & Fruit", category: "Breakfast", prep_time: "15 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:39:03", servings: "8", food_id: [nil, 13, 19]},
  {id: 8, image: "https://silk.com/sites/default/files/recipes/medium/Oatmeal_shutterstock_173846588_RT.gif", meal_name: "Oatmeal", category: "Breakfast", prep_time: "10 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:41:01", servings: "8", food_id: [nil, 2, 20]},
  {id: 6, image: "pbj.jpg", meal_name: "Peanut Butter & Jelly Sandwich", category: "Lunch", prep_time: "2 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:41:29", servings: "1", food_id: [nil, 3, 12, 14]},
  {id: 7, image: "https://www.deltaco.com/images/specials/product-left-slide1.png", meal_name: "Tacos", category: "Dinner", prep_time: "30 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-06-23 03:42:21", servings: "8", food_id: [nil, 5, 8, 21]},
  {id: 11, image: "http://media.istockphoto.com/photos/italian-sausage-picture-id181859578", meal_name: "Sausage Sandwiches", category: "Lunch", prep_time: "20 Minutes", created_at: "2017-09-05 03:28:48", updated_at: "2017-09-05 03:30:29", servings: "8", food_id: [3, 15, 8, nil]},
  {id: 10, image: "https://theprimepursuit.files.wordpress.com/2012/08/dsc06446.jpg", meal_name: "Cold Cereal", category: "Breakfast", prep_time: "2 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-09-05 03:41:40", servings: "1", food_id: [11, 2, nil]},
  {id: 3, image: "eggs.jpg", meal_name: "Eggs & Toast", category: "Breakfast", prep_time: "5 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-09-05 03:44:55", servings: "1", food_id: [3, 1, nil]},
  {id: 2, image: "pizza.jpg", meal_name: "Pizza", category: "Dinner", prep_time: "30 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-11-12 05:42:14", servings: "8", food_id: [5, 8, nil]},
  {id: 1, image: "pancakes.jpg", meal_name: "Pancakes", category: "Breakfast", prep_time: "20 Minutes", created_at: "2017-06-20 03:38:29", updated_at: "2017-11-12 05:44:09", servings: "8", food_id: [1, 10, 18, 2, nil]}
])
