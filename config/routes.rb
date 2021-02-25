Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "borrowing_book/index"
    root to: "static_pages#home"
    get "static_pages/help"
  end
end
