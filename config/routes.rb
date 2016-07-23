Rails.application.routes.draw do
  get 'welcome/Home'

  get 'welcome/Courses'

  get 'welcome/How_it_works'

  get 'welcome/Corporates'

  get 'welcome/Blog'

  resources :invoices

  root to: 'welcome#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
