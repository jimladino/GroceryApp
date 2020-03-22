class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string   "food_name"
      t.string   "cost"
      t.string   "unit_qty"

      t.timestamps
    end
  end
end
