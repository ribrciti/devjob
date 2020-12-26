require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  get 'home/index'

  root to:  "home#index"

  mount Sidekiq::Web => '/sidekiq'

  mount SimpleDiscussion::Engine => "/forum"

end
