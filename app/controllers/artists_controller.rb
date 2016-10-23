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


  def create
    respond_to do |format|
      if @song.save
        format.html { redirect_to todos_path, notice: 'Todo was successfully created.' }
      end
    end
  end
end