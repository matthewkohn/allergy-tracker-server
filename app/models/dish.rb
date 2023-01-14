class Dish < ActiveRecord::Base
  has_many :dish_allergies, dependent: :destroy
  has_many :allergies, through: :dish_allergies
  
  # def allergy_data=(params)
  #   self.ingredients.destroy_all
  #   params.each do |hash|       
  #     self.ingredients.new(
  #       name: hash[:ingredient_name],
  #       allergy_id: hash[:allergy_id]
  #     )
  #   end
  # end

end