class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(safe_photo_params)

		if @photo.save
			flash[:notice] = "Photo created!"
			redirect_to photos_path

		else
			flash[:notice] = 'get that trash outta here'
			render :new	
		end
	end

	def destroy
		Photo.find(params[:id]).destroy
		redirect_to photos_path
	end	

	def edit
		@photo = Photo.find(params[:id])
	end	

	def update
		@photo = Photo.find(params[:id])
		if @photo.update(safe_photo_params)
			flash[:notice] = "photo uploaded"
			redirect_to photo_path

		else
			render edit_photo_path
		end
	end	

	private

	def safe_photo_params
		params.require(:photo).permit(:url, :caption)
	end	

end	