Rails.application.routes.draw do
  get 'top/index'

  root 'top#index'

  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
