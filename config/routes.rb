Rails.application.routes.draw do
  root 'tests#index'
  # get 'test#top'
  resources :tests



  resources :tests do
    collection {post :import}
  end
end
