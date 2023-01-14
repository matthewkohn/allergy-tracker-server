puts "🌱 Seeding spices..."

# dishes
pork = Dish.create(name: "Pork Shank", description: "Corned pork shank with gruyere whipped potatoes, apple cabbage slaw, and puffed farro", price: 32.99)
chicken = Dish.create(name: "Rotisserie Chicken", description: "Wood fired rotisserie chicken with piri piri sauce, fingerling potatoes, and spring onions", price: 26.99)
wedge = Dish.create(name: "Wedge Salad", description: "Iceberg lettuce with tarragon ranch dressing, crumbled blue cheese, avocado, and pickled shallots", price: 10.99)
burger = Dish.create(name: "Cheeseburger", description: "House ground, wood grilled burger with aged colby cheese, applewood smoked bacon, and toasted sesame brioche", price: 15.99)
scallop_salad = Dish.create(name: "Roasted squash & scallop salad", description: "Roasted squash and zucchini with seared scallops and green goddess dressing", price: 9.99)
moqueqa = Dish.create(name: "Seafood Moqueqa", description: "Brazilian style shrimp and lobster dish", price: 41.59)
key_lime_pie = Dish.create(name: "Key Lime Pie", description: "Key lime pie with whipped cream and walnut crust", price: 5.25)

# allergies
gluten = Allergy.create(name: "gluten")
dairy = Allergy.create(name: "dairy")
nut = Allergy.create(name: "nut")
allium = Allergy.create(name: "allium")
shellfish = Allergy.create(name: "shellfish")

# ingredients
farro = Ingredient.create(name: "farro", allergy: gluten)
bread = Ingredient.create(name: "bread", allergy: gluten)
fryer = Ingredient.create(name: "fryer", allergy: gluten)
cheese = Ingredient.create(name: "cheese", allergy: dairy)
cream = Ingredient.create(name: "cream", allergy: dairy)
buttermilk = Ingredient.create(name: "buttermilk", allergy: dairy)
onions = Ingredient.create(name: "onions", allergy: allium)
garlic = Ingredient.create(name: "garlic", allergy: allium)
leeks = Ingredient.create(name: "leeks", allergy: allium)
scallops = Ingredient.create(name: "scallops", allergy: shellfish)
shrimp = Ingredient.create(name: "shrimp", allergy: shellfish)
clams = Ingredient.create(name: "clams", allergy: shellfish)
walnuts = Ingredient.create(name: "walnuts", allergy: nut)
peanuts = Ingredient.create(name: "peanuts", allergy: nut)
almonds = Ingredient.create(name: "almonds", allergy: nut)

# dish_allergy
DishAllergy.create([
  { ingredient_name: "farro", dish: pork, allergy: gluten, is_omittable: true },
  { ingredient_name: "bread", dish: burger, allergy: gluten, is_omittable: true },
  { ingredient_name: "cheese", dish: pork, allergy: dairy, is_omittable: false },
  { ingredient_name: "cheese", dish: burger, allergy: dairy, is_omittable: true },
  { ingredient_name: "cream", dish: key_lime_pie, allergy: dairy, is_omittable: false },
  { ingredient_name: "buttermilk", dish: wedge, allergy: dairy, is_omittable: false },
  { ingredient_name: "onions", dish: chicken, allergy: allium, is_omittable: false },
  { ingredient_name: "scallops", dish: scallop_salad, allergy: shellfish, is_omittable: false },
  { ingredient_name: "shrimp", dish: moqueqa, allergy: shellfish, is_omittable: false },
  { ingredient_name: "walnuts", dish: key_lime_pie, allergy: nut, is_omittable: false },
  { ingredient_name: "peanuts", dish: moqueqa, allergy: nut, is_omittable: false }
])

puts "✅ Done seeding!"
