class Dish < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  has_many :allergies, through: :ingredients
  

  def allergy_ids=(params)
    # binding.pry
    params.each do |hash|
      # allergy = Allergy.find_by(id: hash[:allergy_id])
      self.ingredients.new(name: hash[:ingredient_name],
      allergy_id: hash[:allergy_id])

    end
  end
end
