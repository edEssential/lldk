class ReapersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]  
  
  def index
    @reaper = Reaper.find_by_id(1)
  end
  
  def new
    @reaper = Reaper.new
  end
  
  def create
    @reaper = Reaper.create(params[:reaper])
    respond_to do |format|
      format.html { redirect_to reapers_path }
    end
  end
  
  def edit
    @reaper = Reaper.find(params[:id])
  end

  def update
    @reaper = Reaper.find(params[:id])
    if @reaper.update_attributes(params[:reaper])
      respond_to do |format|
       format.html { redirect_to reapers_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @reaper = Reaper.find(params[:id])
    @reaper.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def show
    @reaper = Reaper.find_by_slug(params[:id])
  end
  
end