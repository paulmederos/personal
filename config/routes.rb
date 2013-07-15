Paulmederos::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#focus-or-discipline'

  get '/adventures', to: 'pages#portfolio' 

  get '/focus-or-disciple', to: 'pages#focus-or-disciple' 
  get '/helping-others-builds-reputation', to: 'pages#helping-others-builds-reputation'
end
