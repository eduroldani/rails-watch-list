class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new

  end

  def create

      @list = List.find(params[:list_id])
      @bookmark = Bookmark.new(bookmark_params)
      @bookmark.list = @list
      if @bookmark.save
        redirect_to list_path(@list)
      else
        render :new
      end
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)

    # no need for app/views/restaurants/destroy.html.erb
  end


end
