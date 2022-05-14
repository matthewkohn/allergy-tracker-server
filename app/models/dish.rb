class Dish < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  has_many :allergies, through: :ingredients
  
end
