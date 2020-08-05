Rails.application.routes.draw do
  get '/blogs' => 'blog#index', as: 'all_blogs'
  get '/blogs/new' => 'blog#new', as: 'new_blog'
  post '/blogs' => 'blog#create'
  get '/blog/:id' => 'blog#show', as: 'one_blog'
  delete '/blogs/:id' => 'blog#delete', as: 'delete_blog'
end
