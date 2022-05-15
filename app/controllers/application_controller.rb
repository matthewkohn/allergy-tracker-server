class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/dishes' do
    dishes = Dish.all
    dishes.to_json
  end

  get '/dishes/:id' do
    dish = Dish.find(params[:id])
    dish.to_json(only: [:id, :name, :description, :price],  include: { 
      ingredients: { only: [:name, :is_avoidable], include: {
        allergy: { only: :name }
      }}
    })
  end

end