class HomeController < ApplicationController
  
  def index
    bring_in_book
    @book_redux = Book.select('packshot_file_name, packshot_updated_at, review1, review2, review3, id').order('id DESC')
    @feed = Writing.first
  end
  
  def bring_in_book
    @book = Book.last
  end
  
  def blog
    
  end
  
end