class Allergy < ActiveRecord::Base
  has_many :dishes
  has_many :dish_allergies, through: :dishes
  
end