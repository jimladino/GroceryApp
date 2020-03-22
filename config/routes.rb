Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'welcome#index'  
get 'foods' => 'foods#index', as: :foods_index
delete 'foods/:id' => 'foods#destroy', as: :deletef
post 'foods/:id' => 'foods#destroy'
get 'meals' => 'meals#index', as: :meals_index
delete 'meals/:id' => 'meals#destroy', as: :deletem
post 'meals/:id' => 'meals#destroy'
get 'choosers' => 'choosers#index', as: :choosers_index
delete 'choosers/:id' => 'choosers#destroy', as: :deleter
post 'choosers/:id' => 'choosers#destroy'
get 'choosers/groceries' => 'choosers#groceries'
resources :foods, :meals, :choosers
end
