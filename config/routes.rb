Rails.application.routes.draw do
  get 'default/index'
  root "default#index"
end
