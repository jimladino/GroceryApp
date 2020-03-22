class CreateChoosers < ActiveRecord::Migration[6.0]
  def change
    create_table :choosers do |t|
      t.string   "day"
      t.integer  "breakfast"
      t.integer  "lunch"
      t.integer  "supper"

      t.timestamps
    end
  end
end
