class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist =Artist.find(params[:id])
  end

  def new
  @song = Song.new
  end
end