class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
	@listings = @user.listings.page(params[:page]).per_page(3)
  end
end
