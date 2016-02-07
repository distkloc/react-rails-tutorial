Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root 'comments#index'

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :comments
    end
  end
end
