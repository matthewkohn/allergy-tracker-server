class Ingredient < ActiveRecord::Base
  belongs_to :dish
  belongs_to :allergy
  
end