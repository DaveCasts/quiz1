class SamplesController < ApplicationController

  def index 
    @sample = Sample.all
  end

  def create
    Sample.create(sample_params)
    redirect_to root_path
  end

  private

  def sample_params
    params.require(:sample).permit(:name, :description)
  end
end
