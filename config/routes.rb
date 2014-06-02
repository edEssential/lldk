DK::Application.routes.draw do
  
  devise_for :users

  devise_for :users, path: '', path_names: { sign_in: "login" }
  
  resources :books
  resources :abouts
  resources :contacts
  resources :thanks
  resources :reapers
  
  root :to => 'home#index'
  match 'blog' => 'home#blog'
  match 'other_writing' => 'writings#index'
  match 'about_the_author' => 'contacts#index'
  match "/:slug" => "books#show"
 
end
