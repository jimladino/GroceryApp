class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string   "image"
      t.string   "meal_name"
      t.string   "category"
      t.string   "prep_time"
      t.string   "servings"
      t.integer  "food_id",    default: [],              array: true

      t.timestamps
    end
  end
end
