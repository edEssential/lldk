DK::Application.routes.draw do
  
  devise_for :users, path: '', path_names: { sign_in: "login" }
  
  resources :books
  resources :abouts
  resources :contacts
  resources :thanks
  
  root :to => 'home#index'
  match 'blog' => 'home#blog'
  match 'more_writing' => 'writings#index'
  match 'the_black_gate' => 'books#show'
 
end
