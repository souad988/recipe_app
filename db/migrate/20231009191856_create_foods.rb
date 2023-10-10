class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :measurement_unit, null: false
      t.decimal :price, null: false, default: 0.0
      t.integer :quantity, null: false, default: 0

      t.timestamps
    end
  end
end
