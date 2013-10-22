class WritingsController < ApplicationController
  
  def index
    @feed = Writing.all
  end

  
end
