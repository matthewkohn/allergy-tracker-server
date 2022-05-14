class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/dishes' do
    dishes = Dish.all
    # dishes.first.allergies.all.to_json
    dishes.first.ingredients.to_json
    # allergies = Allergy.all
    # allergies.to_json
    # ingredients = Ingredient.all
    # ingredients.to_json
    # dishAllergies = Dish.allergies.all
    # dishAllergies.to_json
  end

end