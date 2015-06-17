Rails.application.routes.draw do
  get 'report/index'

  get 'hello_world/index'

  root :to => 'report#index'
end
