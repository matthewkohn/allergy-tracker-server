class DishAllergy < ActiveRecord::Base
  belongs_to :dish
  belongs_to :allergy
  
end