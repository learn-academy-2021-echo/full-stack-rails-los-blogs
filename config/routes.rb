Rails.application.routes.draw do

  root 'blog#index'
  get '/' => 'blog#index'
  get '/blog/new' => 'blog#new', as: 'new_blog'
  post '/blog' => 'blog#create' 
  get '/blog/:id' => 'blog#show', as: 'blogs'
 

end
