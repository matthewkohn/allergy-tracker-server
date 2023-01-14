class AddDatetimeToDishAllergies < ActiveRecord::Migration[6.1]
  def change
    add_column :dish_allergies, :created_at, :datetime, null: false
    add_column :dish_allergies, :updated_at, :datetime, null: false
  end
end
