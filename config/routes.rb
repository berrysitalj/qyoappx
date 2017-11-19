Rails.application.routes.draw do

  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'signup' => 'users#new'
  get 'users/:id/edit' => 'users#edit'
  post 'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'
  post 'users/:id/destroy' => 'users#destroy'



  get '/' => 'qyo#login_form'
  post 'login' => 'qyo#login'
  post 'logout' => 'qyo#logout'

  get 'login_admin' => 'qyo#login_form_admin'
  post 'login_admin' => 'qyo#login_admin'
  post 'logout_admin' => 'qyo#logout_admin'

  get 'qyo/:id' => 'qyo#show'
  post 'qyo/:id/update' => 'qyo#update'

  post 'uploader/create' => 'uploader#create'
  post 'uploader/upload' => 'uploader#upload'
  post 'uploader/upload_all' => 'uploader#upload_all'

end
