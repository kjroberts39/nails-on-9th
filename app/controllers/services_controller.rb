class ServicesController < ApplicationController
	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)
	end

	def edit
		@service = Service.find(params[:id])
	end

	def update
		
	end

	def destroy
		@service.destroy
	end

	private

	def service_params
		params.require(:service).permit(:title, :description, :image)
	end
	
end
