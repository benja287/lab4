Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]

  root "tweets#index"

  get '/tweets', to: 'tweets#index', as: 'tweets'   #para poder hacer @tweets(con tweets variable asignada en el
                                                    #controlador del tweet)
  get '/tweets/new', to: 'tweets#new'
  post '/tweets', to: 'tweets#create'
  get '/tweets/:id', to: 'tweets#show', as: 'tweet' #para poder hacer @tweet(con tweet variable asignada en el
                                                    #controlador del tweet)
  get '/tweets/:id/edit', to: 'tweets#edit'
  put '/tweets/:id', to: 'tweets#update'
  patch '/tweets/:id', to: 'tweets#update'
  delete '/tweets/:id', to: 'tweets#destroy'

  
end
