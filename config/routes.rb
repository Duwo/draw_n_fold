Rails.application.routes.draw do
  resources :picture_parts do
    collection do
      get 'random'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
