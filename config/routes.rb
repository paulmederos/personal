Paulmederos::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#side-project-or-real-product'

  get '/adventures', to: 'pages#portfolio' 

  get '/focus-or-discipline', to: 'pages#focus-or-discipline' 
  get '/helping-others-builds-reputation', to: 'pages#helping-others-builds-reputation'
  get '/side-project-or-real-product', to: 'pages#side-project-or-real-product'
end
