class UsersController < ApplicationController

  # before_action do
  #   @place = Place.find(params[:place_id])
  # end

  def show
    @user = User.find(params[:id])
    Place.create!(user_id: params[:id], country_id: params[:country_id])
    @countries = @user.countries
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end




end
