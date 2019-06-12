Rails.application.routes.draw do
  devise_for :users
  root 'records#index'
  resources :records do
    collection do
      get 'show_date'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
