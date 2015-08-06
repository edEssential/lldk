class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_tweets
  before_filter :bring_in_books 
  
  def bring_in_books
    @books = Book.select('title,id').order('id ASC')  
  end
  
  def bring_in_models
    @books = Book.order("id DESC")
    @abouts = About.order("id DESC")
  end
  
  def load_tweets
    @tweets = Twitter.user_timeline[0..4]
  end
  
end
