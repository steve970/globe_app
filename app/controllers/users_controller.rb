class UsersController < ApplicationController

  # before_action do
  #   @place = Place.find(params[:place_id])
  # end

  before_action :set_user, only:[:show, :destroy]

  def show
    @place = Place.create!(user_id: params[:id], country_id: params[:country_id])
    @places = @user.places
    @countries = @user.countries
  end

  def destroy
    @place = @user.places.find(params[:id])
    @place.delete
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
