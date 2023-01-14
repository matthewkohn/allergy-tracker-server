class RemoveDishIdFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :dish_id
  end
end
