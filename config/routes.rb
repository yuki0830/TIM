Rails.application.routes.draw do
  get 'report/index'
  root :to => 'report#index'
end
