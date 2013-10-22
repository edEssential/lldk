class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :bring_in_books 
  
  def bring_in_books
    @books = Book.select('title,id').order('id DESC')  
  end
  
end
