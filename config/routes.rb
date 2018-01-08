Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  authenticate :user do
    scope '/api' do
      scope '/v1' do
        resources :kosten_traegers
        resources :eintrags
        scope '/eintrags' do
          post 'atonce', to: 'at_once#atonce'
        end
      end
    end
  end  

  root to: 'static#home'
  
end
