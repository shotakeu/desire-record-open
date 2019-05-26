Rails.application.routes.draw do
  root 'records#index'
  resources :records do
    collection do
      get 'show_date'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
