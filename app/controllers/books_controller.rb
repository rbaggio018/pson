class BooksController < ApplicationController

  def index
  end

  def create
    respond_to do |format|
      format.js
    end
  end
end
