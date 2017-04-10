Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  #post_path(@post) -- this goes in index.html.erb page, within loop
  get '/register', to: 'users#new', as: 'register'

end


# Example:: Hard coded path: "/posts/#{@post.id}"
# Example:: Route helper: post_path(@post)

#example of above in console: app.post_path(3)
