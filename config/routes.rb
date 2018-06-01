Rails.application.routes.draw do
  root "home#index"
  resources :home do
    collection do
      post :is_prime_number
    end
  end
end
