# frozen_string_literal: true

Rails.application.routes.draw do
  root "ideas#index"

  devise_for :users

  shallow do
    namespace :model do
      resources :columns
    end
    resources :models
    resources :ideas
  end
end
