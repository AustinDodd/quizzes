class SongsController < ApplicationController


  def index
    @song = Song.order("RANDOM()").first
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    if @song.invalid?
      flash[:error] = '<strong>Could not save</strong> you must enter a song.'
    end
    redirect_to root_path
  end



  private

  def song_params
    params.require(:song).permit(:song, :artist, :genre)
  end

end
