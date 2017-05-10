class StylistsController < ApplicationController
	before_action :set_stylist, only: [:edit, :update, :destroy]
	def index
		@stylists = Stylist.all
	end

	def new
		@stylist = Stylist.new
	end

	def create
		@stylist = Stylist.new(stylist_params)
		if @stylist.save
			redirect_to stylists_path
		else
			render :new
		end

	end

	def edit
	end

	def update
		if @stylist.save
			redirect_to stylists_path
		else
			render :edit
		end
	end

	def destroy
		
		@stylist.delete
		redirect_to stylists_path
	end

	private

	def set_stylist
		@stylist = Stylist.find(params[:id])
	end

	def stylist_params
		params.require(:stylist).permit(:name, :bio, :image)
	end
end
