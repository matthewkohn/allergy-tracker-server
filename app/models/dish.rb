class Dish < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  has_many :allergies, through: :ingredients
  

  def allergy_ids=(params)
    # binding.pry
    self.ingredients.destroy_all

    params.each do |hash|
      # binding.pry
        
      self.ingredients.new(
        name: hash[:ingredient_name],
        allergy_id: hash[:allergy_id]
      )

    end
  end
end
