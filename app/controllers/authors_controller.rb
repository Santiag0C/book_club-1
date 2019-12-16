class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @authors_books = @author.books
    @average = Author.average(@authors_books)
  end

end
