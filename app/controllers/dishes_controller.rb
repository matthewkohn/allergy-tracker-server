class DishesController < ApplicationController
  get '/dishes' do
    dishes = Dish.all
    serialize(dishes)
  end

  post '/dishes' do
    @dish = Dish.new(
      name: params[:name], 
      description: params[:description], 
      price: params[:price],
      allergy_data: params[:allergy_data]
    )
    if @dish.save
      dish_to_json
    else
      dish_error_messages
    end
  end

  patch '/dishes/:id' do
    find_dish
    if @dish.update(params)
      dish_to_json
    else
      dish_error_messages
    end
  end

  delete '/dishes/:id' do
    find_dish
    if @dish
      @dish.destroy
      dish_to_json
    else
      { errors: ["Dish Doesn't Exist"] }.to_json
    end
  end

end


private

  def serialize(objects)
    objects.to_json(
      include: [
        dish_allergies: { 
          only: [:id, :ingredient_name, :is_omittable],
          include: { allergy: { only: :name } }
        }
      ]
    )
  end

  def find_dish
    @dish = Dish.find(params[:id])
  end

  def dish_to_json
    @dish.to_json
  end

  def dish_error_messages
    { errors: @dish.errors.full_messages }.to_json
  end