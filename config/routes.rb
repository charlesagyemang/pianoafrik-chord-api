Rails.application.routes.draw do
  get 'home/index'
  get 'home/chords_and_sofas'
  get 'home/harmonized_chords'
  get 'home/patterns'
  get 'home/test'
  get 'home/ping'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
