class SongsController < ApplicationController
  def index
    @song = Song.order("RANDOM()").first
  end
end
