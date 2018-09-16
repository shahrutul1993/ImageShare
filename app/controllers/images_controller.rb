class ImagesController < ApplicationController
	before_action :set_album, only: [:index, :new, :create]
    # before_action :set_album_image, only: [:destroy]
	


	def new
	end

	def index
		@images = @album.images
		@image = @album.images.new
	end

	def create
		@image = @album.images.new(image_params)
		respond_to do |format|
      if @image.save
        
        # format.html { redirect_to :back }
        format.json { render json: @image }
        format.js { render layout: false }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
	end
  
private

  def set_album
  	@new_album = Album.find(params[:id])
  	@user = @new_album.user
  end

  def image_params
  	params.require(:image).permit(:file, :id)
  end

  def set_album_image
    @image = Image.find(params[:id])
    @new_album = @image.album
    @user = @album.user
  end

end