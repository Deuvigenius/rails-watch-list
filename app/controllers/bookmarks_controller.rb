class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    list = List.find(params[:list_id])
    movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie_id = movie
    @bookmark.list_id = list
    if @bookmark.save
      redirect_to list_path(list)
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end

end
