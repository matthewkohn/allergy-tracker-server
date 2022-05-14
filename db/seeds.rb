puts "🌱 Seeding spices..."

pork = Dish.create(name: "Pork", description: "It's ok", price: 10.99)
dairy = Allergy.create(name: "Dairy")
Ingredient.create(dish: pork, allergy: dairy)

puts "✅ Done seeding!"
