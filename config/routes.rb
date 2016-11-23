Rails.application.routes.draw do
  get '/characters',        to: 'characters#index'
  get '/characters/search', to: 'characters#search'
  get '/characters/all',    to: 'characters#all'
end
