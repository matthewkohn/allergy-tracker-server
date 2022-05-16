class DishesController < ApplicationController
  get '/dishes' do
    dishes = Dish.all
    dishes.to_json
  end

  get '/dishes/:id' do
    dish = Dish.find(params[:id])
    dish.to_json(
      only: [:id, :name, :description, :price], 
      include: {
        ingredients: { 
          only: [:name, :is_avoidable], 
          include: {
            allergy: { 
              only: :name 
            }
          }
        }
      }
    )
  end

  post '/dishes' do
    dish = Dish.create(
      name: params[:name], 
      description: params[:description], 
      price: params[:price]
    )
    dish.to_json
  end
  

  
  delete '/dishes/:id' do
    dish = Dish.find(params[:id])
    dish.destroy
    dish.to_json
  end

end