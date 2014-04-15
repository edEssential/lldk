class WritingsController < ApplicationController
  
  def index
    @feeds = Writing.paginate(:page => params[:page], :per_page => 1).order("id DESC")
  end

end
