Rails.application.routes.draw do
  #get '/page_comments', to: 'page_comments#index'
  #get '/page_comments/new', to: 'page_comments#new', as:'new_page_comment'
  #post '/page_comments', to: 'page_comments#create'
  #get '/page_comments:id/edit', to: 'page_comments#edit', as:'edit_page_comment'
  #get '/page_comments:id', to: 'page_comments#show', as:'page_comment'
  #patch '/page_comments:id', to: 'page_comments#update'
  #put '/page_comments:id', to: 'page_comments#update'
  #destroy '/page_comments:id', to: 'page_comments#delete'
  resources :page_comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
