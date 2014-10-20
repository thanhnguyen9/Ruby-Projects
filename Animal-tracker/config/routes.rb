Rails.application.routes.draw do

  root to: 'wilds#index'

  get '/wilds' => 'wilds#index'

  get '/wilds/new' => 'wilds#new'

  post '/wilds' => 'wilds#create'

  patch 'wilds/:id' => 'wilds#update'

  delete '/wilds/:id' => 'wilds#destroy'

  get '/wilds/:id' => 'wilds#show', as: :show

  get '/wilds/:id/edit' => 'wilds#edit', as: :edit


  get '/wilds/:wild_id/sightings/new' => 'sightings#new', as: :new_sighting

  post '/wilds/:wild_id/sightings' => 'sightings#create'

  patch '/wilds/:wild_id/sightings/:id' => 'sightings#update'

  get '/wilds/:wild_id/sightings/:id/edit' => 'sightings#edit', as: :edit_sighting

  get '/wilds/:wild_id/sightings/:id' => 'sightings#show', as: :show_sighting

  delete '/wilds/:wild_id/sightings/:id' => 'sightings#destroy'


end
