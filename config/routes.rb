Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :employees
 Rails.application.routes.draw do
  root 'employees#index'
 end
end
