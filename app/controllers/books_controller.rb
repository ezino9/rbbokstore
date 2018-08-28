class BooksController < ApplicationController
  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = 'Book created!'
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = 'Book updated!'
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def edit
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def destroy
     @book = Book.find(params[:id])
      @book.destroy
      flash[:notice] = 'Book removed!'
      redirect_to books_path
  end

  def index
    @categories = Category.all
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
    @authors = Author.all
    @publishers = Publisher.all
  end

  private
  def book_params
    params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbm, :price, :buy, :format, :except, :pages, :year, :coverpath)
  end
end
