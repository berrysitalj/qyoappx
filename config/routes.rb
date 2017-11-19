Rails.application.routes.draw do

  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'signup' => 'users#new'
  get 'users/:id/edit' => 'users#edit'


  get '/' => 'qyo#login_form'
  get 'login_admin' => 'qyo#login_form_admin'
  get 'qyo/:id' => 'qyo#show'

end
