class RemoveIsAvoidableColumnFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :is_avoidable
  end
end
