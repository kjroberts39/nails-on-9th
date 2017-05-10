class ServicesController < ApplicationController
	before_action :set_service, only: [:edit, :update, :destroy]
	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)
		if @service.save
			redirect_to services_path
		else
			render :new
		end

	end

	def edit
	end

	def update
		if @service.save
			redirect_to services_path
		else
			render :edit
		end
	end

	def destroy
		
		@service.delete
		redirect_to services_path
	end

	private

	def set_service
		@service = Service.find(params[:id])
	end

	def service_params
		params.require(:service).permit(:title, :description, :image)
	end
	
end
