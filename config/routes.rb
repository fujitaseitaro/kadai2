Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
end
