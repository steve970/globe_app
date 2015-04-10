class UsersController < ApplicationController

  before_action :set_user, only:[:show, :destroy]

  def show
    @place = Place.new(user_id: params[:id], country_id: params[:country_id])
    @place.save
    @countries = @user.countries
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
