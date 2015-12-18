class CompaniesController < ApplicationController

	def index
		@companies = Company.all
	end	

	def rankings
		@companies = Company.order(:number_of_employees).reverse
	end	

	def cities
		@city = params[:city]
		@companies = Company.where(city: @city)
	end	

	def marketcap
		@companies = Company.order(:marketcap).reverse
	end	

	def show
		@company = Company.find(params[:id])
	end	

	def destroy
		@company = Company.find(params[:id]).destroy
		redirect_to companies_path
	end	


end	