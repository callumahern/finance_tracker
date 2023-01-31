# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root to: 'home#homepage'
  get 'expense/new', to: 'expense#new'
end
