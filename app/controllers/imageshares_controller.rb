class ImagesharesController < ApplicationController
 
  def index
  	@albums = Album.all
  end

end
