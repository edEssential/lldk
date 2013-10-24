class BooksController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]  
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.create(params[:book])
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      respond_to do |format|
       format.html { redirect_to root_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
end
