class Allergy < ActiveRecord::Base
  has_many :ingredients
  has_many :dish_allergies

  # def allergy_objs
  #   binding.pry
  # end
  
end