Rails.application.routes.draw do
  resources :destinations
  resources :posts
  resources :bloggers
  resources :bloggers, :posts, :destinations
end
