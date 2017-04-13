class CompaniesController < ApplicationController

	def index

	end

	def new
		@user = User.find(params[:user_id])
		@company = Company.new

	end

	def show
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
		params.require(:company).permit(:name, :description, :user_id)
	end
end