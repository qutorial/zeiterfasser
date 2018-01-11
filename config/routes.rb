Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  scope '/api' do
    scope '/v1' do
      resources :kosten_traegers, only: [:index, :show]
#      resources :eintrags, only: [:index, :show, :update, :edit]
      scope '/eintrags' do
        post 'atonce', to: 'at_once#atonce'
      end
    end
  end

  root to: 'static#home'
  
end
