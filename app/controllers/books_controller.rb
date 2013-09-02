class BooksController < ApplicationController

  def index
    @books = Book.order("id desc")
  end

  def create
    book_attributes = BookFile.parse(params[:file])
    @book = Book.new(book_attributes)

    respond_to do |format|
      if @book.save
        format.js
      else
        format.js { render 'failure_alert' }
      end
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.js
    end
  end
end
