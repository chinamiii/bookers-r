class BooksController < ApplicationController

  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)

  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @newbook = Book.new

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
  end

  def index
    @user = current_user
    @book = Book.new
    @book.user_id = current_user.id
    @books = Book.all
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
