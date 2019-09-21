class SongsController < ApplicationController
  def index
    @song = Song.order("RANDOM()").first
  end

  def new
    @song = Song.new
  end

end
