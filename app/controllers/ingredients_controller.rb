class IngredientsController < ApplicationController

  get '/ingredients' do
    ingredients = Ingredient.all
    ingredients.to_json
  end

  get '/ingredients/:id' do
    ingredient = Ingredient.find(params[:id])
    ingredient.to_json
  end

  post '/ingredients' do
    ingredient = Ingredient.create(
      name: params[:name], 
      is_avoidable: params[:is_avoidable], 
      dish_id: params[:dish_id],
      allergy_id: params[:allergy_id]
    )
    ingredient.to_json
  end

  delete '/ingredients/:id' do
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    ingredient.to_json
  end

end