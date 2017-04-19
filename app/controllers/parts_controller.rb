class PartsController < ApplicationController
before_action :authenticate_user!
def index

end


def show 
@part = Part.find(params[:id])
end


def new
	@user = User.find(params[:user_id])
	@company = @user.companies.find(params[:company_id])
	@part = Part.new

end

def create
	@part = current_user.parts.new(parts_params)
	@part.user_id = current_user.id
	if @part.save
		flash[:success] = "have been saved"
		redirect_to current_user
	else
		flash[:danger] = "not saved"
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

def parts_params
	params.require(:part).permit(:name, :description, :user_id4 )

end

end