class ExhibitsController < ApplicationController
	before_action :set_exhibit, only: [:edit, :update, :destroy]
	def index
		@exhibits = Exhibit.all
	end

	def new
		@exhibit = Exhibit.new
	end

	def create
		@exhibit = Exhibit.new(exhibit_params)
		if @exhibit.save
			redirect_to exhibits_path
		else
			render :new
		end

	end

	def edit
	end

	def update
		if @exhibit.save
			redirect_to exhibits_path
		else
			render :edit
		end
	end

	def destroy
		
		@exhibit.delete
		redirect_to exhibits_path
	end

	private

	def set_exhibit
		@exhibit = Exhibit.find(params[:id])
	end

	def exhibit_params
		params.require(:exhibit).permit(:photo, :artist)
	end
end
