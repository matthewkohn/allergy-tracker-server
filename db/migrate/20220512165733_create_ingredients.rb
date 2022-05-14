class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :is_avoidable
      t.integer :dish_id
      t.integer :allergy_id
    end
  end
end
