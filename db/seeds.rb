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

Ingredient.create(name: "farro", dish: pork, allergy: gluten)
Ingredient.create(name: "bread", dish: burger, allergy: gluten)
Ingredient.create(name: "cheese", dish: pork, allergy: dairy)
Ingredient.create(name: "cheese", dish: burger, allergy: dairy)
Ingredient.create(name: "cream", dish: key_lime_pie, allergy: dairy)
Ingredient.create(name: "buttermilk", dish: wedge, allergy: dairy)
Ingredient.create(name: "spring onions", dish: chicken, allergy: allium)
Ingredient.create(name: "scallops", dish: scallop_salad, allergy: shellfish)
Ingredient.create(name: "shrimp", dish: moqueqa, allergy: shellfish)
Ingredient.create(name: "walnuts", dish: key_lime_pie, allergy: nut)
Ingredient.create(name: "peanuts", dish: moqueqa, allergy: nut)


puts "✅ Done seeding!"
