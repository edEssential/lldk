DK::Application.routes.draw do
  
  get "cms/index"

  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_dk' }
  
  resources :books
  resources :abouts
  resources :cms
  
  root :to => 'home#index'
  match 'blog' => 'home#blog'
  match 'other_writing' => 'writings#index'
  match 'about_the_author' => 'abouts#index'
 
end
