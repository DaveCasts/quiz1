class ViewsController < ApplicationController

  def index 
    @view = View.all
  end

  def create
    View.create(view_params)
    redirect_to root_path
  end

  def new
    @view = View.new
  end

  private

  def view_params
    params.require(:view).permit(:name, :description)
  end
end
