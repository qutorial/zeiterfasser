Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  authenticate :user do
   # resources :something do
   #   resources :something_embedded, only: [:new, :create, :destroy, :edit, :update]
   # end
  end

  resources :eintrags
  resources :kosten_traegers

  scope '/api' do
    scope '/v1' do
          resources :kosten_traegers
      scope '/eintrags' do
        post 'atonce', to: 'at_once#atonce'
      end
    end
  end
  
  root to: 'static#home'

  get 'noscript', to: 'static#noscript'
  
end
