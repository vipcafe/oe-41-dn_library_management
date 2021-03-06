class BorrowingBookController < ApplicationController
  before_action :current_user

  def index
    @borrowing_books = @current_user.borrowing_books.order_by_created_date
                                    .page(params[:page]).per(2)
  end
end
