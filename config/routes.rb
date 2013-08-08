Paulmederos::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#diminishing_returns'

  get '/adventures', to: 'pages#portfolio' 

  get '/designing-for-growth-mindset', to: 'pages#designing_for_growth_mindset' 
  get '/focus-or-discipline', to: 'pages#focus_or_discipline' 
  get '/helping-others-builds-reputation', to: 'pages#helping_others_builds_reputation'
  get '/side-project-or-real-product', to: 'pages#side_project_or_real_product'
  get '/diminishing-returns-behavior-change', to: 'pages#diminishing_returns'
  
end
