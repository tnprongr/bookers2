class BooksController < ApplicationController
  def show
  end

  def index
   @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
  end

  def edit
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
