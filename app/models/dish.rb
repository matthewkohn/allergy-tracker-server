class Dish < ActiveRecord::Base
  has_many :allergies
  has_many :dish_allergies, through: :allergies
  
end
