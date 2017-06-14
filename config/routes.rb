Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api , path:'/api', defaults: { format: :json } do

    resources :babies     , only: [:index ,:show] do
      get '/activity_logs' , to: 'activity_logs#find_by_baby_id'
    end

    resources :activities , only: [:index ,:show]

    resources :assistants , only: [:index ,:show]

    resources :activity_logs


  end

end
