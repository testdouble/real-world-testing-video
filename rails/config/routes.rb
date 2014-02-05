Example::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :todos

  root 'todos#index'
end
