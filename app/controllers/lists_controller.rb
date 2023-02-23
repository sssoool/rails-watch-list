class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end
  
  def create
    @list = List.new(valid_params)
  end

  private

  def valid_params
    params.require(:list).permit(:name)
  end
end
