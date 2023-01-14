class Dish < ActiveRecord::Base
  has_many :dish_allergies, dependent: :destroy
  has_many :allergies, through: :dish_allergies
  
  def allergy_data=(params)
    self.dish_allergies.destroy_all
    params.each do |hash|       
      self.dish_allergies.new(
        allergy_id: hash[:allergy_id],
        ingredient_name: hash[:ingredient_name],
        is_omittable: hash[:is_omittable]
      )
    end
  end

end