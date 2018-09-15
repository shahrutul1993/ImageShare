# class ImagesController < ApplicationController
# 	before_action :set_product, only: [:index, :new, :create]
#   before_action :set_product_image, only: [:destroy]
	


# 	def new
# 	end

# 	def index
# 		@images = @album.images
# 		@image = @album.images.new
# 	end

# 	def create
# 		@image = @album.images.new(image_params)
# 		respond_to do |format|
#       if @image.save
        
#         # format.html { redirect_to :back }
#         format.json { render json: @image }
#         format.js { render layout: false }
#       else
#         format.html { render :new }
#         format.json { render json: @image.errors, status: :unprocessable_entity }
#       end
#     end
# 	end

#   def destroy
#     @image.destroy
#     respond_to do |format|
#       format.html { redirect_to merchant_store_store_product_images_path(@store,@new_store_product), notice: 'Image was successfully deleted.' }
#       format.json { head :no_content }
#     end
#   end

# private

#   def set_product
#   	@new_store_product = NewStoreProduct.find(params[:store_product_id])
#   	@store = @new_store_product.store
#   end

#   def image_params
#   	params.require(:image).permit(:file, :id)
#   end

#   def set_product_image
#     @image = Image.find(params[:id])
#     @new_store_product = @image.new_store_product
#     @store = @new_store_product.store
#   end

# end