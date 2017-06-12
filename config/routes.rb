Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api , path:'/api', defaults: { format: :json } do

    resources :babies , only: [:index ,:show]

    resources :activities , only: [:index ,:show]

    resources :assistants , only: [:index ,:show]
  end

end
