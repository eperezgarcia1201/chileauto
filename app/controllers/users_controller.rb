class UsersController < ApplicationController
before_action :authenticate_user!
def index

end

def show
	@user = User.find(params[:id])
	@company = @user.companies.find_by(params[:company_id])
	@companies = current_user.companies.all.order('created_at DESC') if current_user

end

end
