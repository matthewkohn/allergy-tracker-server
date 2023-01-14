class AddDatetimeToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :created_at, :datetime, null: false
    add_column :ingredients, :updated_at, :datetime, null: false
  end
end
