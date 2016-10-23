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

  def update
    respond_to do |format|
      if @artist.update(song_params)
        format.html { redirect_to @artist, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @songs.destroy
    respond_to do |format|
      format.html { redirect_to @artist, notice: 'Songs were successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def song_params
    params.require(:artist).permit(:song)
  end

end


