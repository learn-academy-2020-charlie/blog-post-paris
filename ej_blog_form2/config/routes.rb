Rails.application.routes.draw do
  get '/blogs' => 'blog#index', as: 'all_blogs'
  get '/blog/:id' => 'blog#show', as: 'one_blog'
  get '/blogs/new' => 'blog#new', as: 'new_blog'
end
