Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :blogs

  post "blogs/:id/destroy" => "blogs#destroy"
end