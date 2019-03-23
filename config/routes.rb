Rails.application.routes.draw do
  resources :projects do
    member do 
    post 'people',to: 'projects_people#create', as: 'add_user'
    delete 'people/:person_id', to: 'projects_people#delete_user_of_project', as: 'delete_user_of'
  end 
end
resources :people do
  member do 
  delete 'projects/:project_id', to: 'projects_people#delete_project_of_person', as: 'delete_project_of'
  end
end
  devise_for :users
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
