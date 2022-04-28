Rails.application.routes.draw do
  root to: "cookings#timer"
  get 'cookings/:id/timer', to: 'cookings#timer_id', as: 'timer_id'
  get 'cookings/timer', to: 'cookings#timer', as: 'timer'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :cookings
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
