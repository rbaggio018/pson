class BooksController < ApplicationController

  def index
  end

  def create
    book_attributes = BookFile.parse(params[:file])
    @book = Book.new(book_attributes)
    @book.save # assume it's successful
    respond_to do |format|
      format.js
    end
  end
end
