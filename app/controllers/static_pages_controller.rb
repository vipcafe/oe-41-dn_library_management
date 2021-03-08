class StaticPagesController < ApplicationController
  def home
    @books = Book.order_by_title
                 .paginate(page: params[:page],
                  per_page: Settings.static_page.per_page)
  end

  def list_books
    @books = check_params.includes(:author, :category)
                         .paginate(page: params[:page],
                          per_page: Settings.static_page.per_page)
  end

  private

  def check_params
    type = params[:option]
    value = params[:term]
    s_books = Settings.static_page.search_books
    s_author = Settings.static_page.search_author
    s_category = Settings.static_page.search_category

    return Book.search_by_book_title(value) if type == s_books

    return Book.search_by_author_name(value) if type == s_author

    return Book.search_by_category_name(value) if type == s_category

    Book.order_by_title
  end
end
