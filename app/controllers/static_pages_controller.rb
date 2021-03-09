class StaticPagesController < ApplicationController
  before_action :current_user

  def home
    @abc = Book.order_by_title
                 .paginate(page: params[:page],
                  per_page: Settings.static_page.per_page)
  end

  def list_books
    @categories = Category.all
    @books = check_params.includes(:author, :category)
                         .paginate(page: params[:page],
                          per_page: Settings.static_page.per_page)
    if @books.empty?
      flash[:info] = "Không tìm thấy sách #{params[:term]}"

    end
  end

  private

  def check_params
    value = params[:term]
    type = params[:option]
    s_books = Settings.static_page.search_book
    s_author = Settings.static_page.search_author
    s_category = Settings.static_page.search_category

    return Book.search_by_book_title(value) if type == s_books

    return Book.search_by_author_name(value) if type == s_author

    return Book.search_by_category_name(value) if type == s_category

    Book.order_by_title
  end
end
