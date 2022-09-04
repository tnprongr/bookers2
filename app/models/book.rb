class Book < ApplicationRecord
  belongs_to :user
  
  def new
    @book = Book.new  
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
