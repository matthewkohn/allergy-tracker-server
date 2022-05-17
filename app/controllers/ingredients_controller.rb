class IngredientsController < ApplicationController

  get '/ingredients/:id' do
    ingredient = Ingredient.find(params[:id])
    ingredient.to_json
  end

  # post '/ingredients' do
  #   ingredient = Ingredient.create()
  # end


end