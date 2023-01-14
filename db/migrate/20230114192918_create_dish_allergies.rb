class CreateDishAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_allergies do |t|
      t.string :ingredient_name
      t.boolean :is_omittable
      t.integer :dish_id
      t.integer :allergy_id
    end
  end
end
