puts "🌱 Seeding spices..."

pork = Dish.create(name: "Pork Shank", description: "Corned pork shank with gruyere whipped potatoes, apple cabbage slaw, and puffed farro", price: 32.99)
chicken = Dish.create(name: "Rotisserie Chicken", description: "Wood fired rotisserie chicken with piri piri sauce, fingerling potatoes, and spring onions", price: 26.99)
wedge = Dish.create(name: "Wedge Salad", description: "Iceberg lettuce with tarragon ranch dressing, crumbled blue cheese, avocado, and pickled shallots", price: 10.99)
burger = Dish.create(name: "Cheeseburger", description: "House ground, wood grilled burger with aged colby cheese, applewood smoked bacon, and toasted sesame brioche", price: 15.99)
scallop_salad = Dish.create(name: "Roasted squash & scallop salad", description: "Roasted squash and zucchini with seared scallops, crispy asparagus, arugula, and green goddess dressing", price: 9.99)
moqueqa = Dish.create(name: "Seafood Moqueqa", description: "Brazilian style shrimp and lobster dish", price: 41.50)
key_lime_pie = Dish.create(name: "Key Lime Pie", description: "Key lime pie with whipped cream and walnut crust", price: 5.25)

gluten = Allergy.create(name: "gluten")
dairy = Allergy.create(name: "dairy")
nut = Allergy.create(name: "nut")
allium = Allergy.create(name: "allium")
shellfish = Allergy.create(name: "shellfish")

# base ingredients
Ingredient.create([
  { name: "farro", allergy: gluten },
  { name: "bread", allergy: gluten },
  { name: "fryer", allergy: gluten },
  { name: "cheese", allergy: dairy },
  { name: "cream", allergy: dairy },
  { name: "buttermilk", allergy: dairy },
  { name: "onions", allergy: allium },
  { name: "garlic", allergy: allium },
  { name: "leeks", allergy: allium },
  { name: "scallops", allergy: shellfish },
  { name: "shrimp", allergy: shellfish },
  { name: "clams", allergy: shellfish },
  { name: "walnuts", allergy: nut },
  { name: "peanuts", allergy: nut },
  { name: "almonds", allergy: nut }
])

# dish instances of ingredients
Ingredient.create([
  { name: "farro", dish: pork, allergy: gluten },
  { name: "bread", dish: burger, allergy: gluten },
  { name: "cheese", dish: pork, allergy: dairy },
  { name: "cheese", dish: burger, allergy: dairy },
  { name: "cream", dish: key_lime_pie, allergy: dairy },
  { name: "buttermilk", dish: wedge, allergy: dairy },
  { name: "onions", dish: chicken, allergy: allium },
  { name: "scallops", dish: scallop_salad, allergy: shellfish },
  { name: "shrimp", dish: moqueqa, allergy: shellfish },
  { name: "walnuts", dish: key_lime_pie, allergy: nut },
  { name: "peanuts", dish: moqueqa, allergy: nut }
])

puts "✅ Done seeding!"
