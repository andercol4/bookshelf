class BooksController < ApplicationController
  before_action :find_book, except: [:index, :new, :create]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.assign_attributes(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      raise "TODO"
    end
  end

  def edit
  end

  def update
    @book.assign_attributes(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      raise "TODO"
    end
  end

  def delete
    if @book.destroy
      redirect_to books_path
    else
      raise "TODO"
    end
  end

  private

  def book_params
    params.require(:book).permit(
      :title, :description, :cover_image,
      book_copies_attributes: [:id, :_destroy, :book_format, :file]
    )
  end

  def find_book
    @book = Book.find(params[:id])
  end

end