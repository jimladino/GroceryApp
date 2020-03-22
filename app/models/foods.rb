class Foods < ActiveRecord::Base
    #belongs_to :meals
    default_scope { order(food_name: :asc)}
end
