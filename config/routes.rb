Rails.application.routes.draw do

  get 'monthly_expenses/index'
  get 'monthly_expenses/new'
  get 'monthly_expenses/show'
  get 'monthly_expenses/edit'
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :incomes
  resources :expenses do
    collection { post :import }
  end

  get '/expenses/show/:id', to: "expenses#show"

  post '/monthly_expenses/show/:date', to: "monthly_expenses#show"
  post '/monthly_expenses/index', to: 'monthly_expenses#index'
  get '/home/top', to: "home#top"
end
