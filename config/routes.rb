require 'sidekiq/web'

Rails.application.routes.draw do
<<<<<<< HEAD
  resources :jobs
=======
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount SimpleDiscussion::Engine => "/forum"

  devise_for :users
<<<<<<< HEAD
  root to: 'jobs#index'
=======
  root to: 'home#index'
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
end
