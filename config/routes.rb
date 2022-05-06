Rails.application.routes.draw do
  root to: "cookings#timer"
  get 'cookings/:id/timer/recipes/:recipe_id', to: 'recipes#show', as: 'timer_id_recipe'
  get 'cookings/timer', to: 'cookings#timer', as: 'timer'


  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :cookings do
    member do
      get 'timer_id'      
    end
    collection do
      get 'search'
    end
  end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
