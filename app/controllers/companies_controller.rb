class CompaniesController < ApplicationController
before_action :authenticate_user!, :except => [:index, :show]
	def index
		@companies = Company.all.order('created_at DESC ')
	end

	def new
		@user = User.find_by(params[:id])
		@company = Company.new

	end

	def show
		@user = User.find(params[:user_id])
		@company = Company.find(params[:id])

	end



def create
	@company = current_user.companies.new(company_params)
	if @company.save
		flash[:success] = "Company has been saved"
		redirect_to user_path current_user

	else
		flash[:danger] = "Cant be saved"
		render 'new'
end

end

	def edit

	end

	def update

	end

	def destroy

	end

private

	def company_params
		params.require(:company).permit(:name, :description, :city_field, :state_field, :country_field, :expiration_date, :phone, :user_id)
	end
end