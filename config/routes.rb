Rails.application.routes.draw do
  root 'tests#top'
  get 'tests/index'
  # resources :tests
  get 'tests/top'
  get 'tests/readme'
  # get 'tests/top'　=> 'tests#top'



  # resources :tests do
  #   collection {post :import}
  # end
end
