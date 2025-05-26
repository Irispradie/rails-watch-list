class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @movies = @list.movies
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(lists_params)
    if @lists.save
    redirect_to lists_path(@list)
    else
    end
  end

  def edit
    @lists = List.find(params[:id])
  end

  def update
    @lists = List.find(params[:id])
    @lists.update(lists_params)

    redirect_to lists_path(@lists)
  end

  def destroy
    @lists = List.find(params[:id])
    @lists.destroy

    redirect_to lists_path, status: :see_other
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

end
