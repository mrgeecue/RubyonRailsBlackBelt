class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to "/songs"
  end

  def show
    @song = Song.find(params[:id])
  end


  private
  def song_params
  params.require(:song).permit(:artist, :title, :added_count)
  end
end
