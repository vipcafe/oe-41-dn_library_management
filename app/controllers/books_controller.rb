class BooksController < ApplicationController
  before_action :load_book
  before_action :current_user

  def show; end

  def load_book
    @book = Book.find_by id: params[:id]
    return if @book
    redirect_to root_path
    flash[:success] = "Không tìm thấy trang 404"
  end
end
