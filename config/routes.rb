Rails.application.routes.draw do

  scope "(:locale)", locale: /en|vi/ do
    get "borrowing_book/index"
    root to: "static_pages#home"
    get "static_pages/list_books"

    get "sessions/login"
    post "sessions/login" ,to: "sessions#create"
    delete "sessions/logout", to: "sessions#destroy"
    get "sessions/sign_up"

  end
end
