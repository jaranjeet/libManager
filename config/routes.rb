Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  get 'students/create'
  get 'students/edit'
  get 'welcome/index'
  get '/returnBook', to: 'borrowings#returnBook', as: 'returnBook'
  root 'welcome#index'
  resources :students, :books, :borrowings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
