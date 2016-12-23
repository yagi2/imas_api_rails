Rails.application.routes.draw do
  get '/',                  to: 'welcome#index'

  get '/characters',        to: 'characters#index'
  get '/characters/search', to: 'characters#search'
  get '/characters/all',    to: 'characters#all'
end
