Rails.application.routes.draw do

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :incomes
  resources :expenses do
    collection { post :import }
  end
  get '/home/top', to: "home#top"
end
