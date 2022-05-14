class Allergy < ActiveRecord::Base
  has_many :ingredients
  has_many :dishes, through: :ingredients
  
end