class CreateAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :allergies do |t|
      t.string :name
      t.boolean :is_avoidable
      t.boolean :is_lethal
    end
  end
end
