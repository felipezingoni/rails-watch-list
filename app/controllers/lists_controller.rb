class ListsController < ApplicationController
  # read
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  # create
  def create
    @list = List.new
  end

  def new
    @list = List.new(params_list)
    @list.save
    redirect_to list_index_path(@list)
  end

  private

  def params_list
    params.require(:list).permit(:name)
  end
end
