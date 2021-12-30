class BooksController < ApplicationController

  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)

  end

  def show
    @book = Book.find(params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @books = Book.all
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
