Rails.application.routes.draw do
  get '/about' => 'abouts#index', as: :about
  get '/contact' => 'contacts#index', as: :contact

  get '/acticle/:slug' => 'posts#show', as: :post
  root to: 'posts#index'
end
