require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount SimpleDiscussion::Engine => "/forum"

  get 'home/index'

  root to:  "jobs#index"

end
