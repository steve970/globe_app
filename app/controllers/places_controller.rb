class PlacesController < ApplicationController

  before_action :set_user, only:[:destroy]
  before_action :set_place, only:[:destroy]

  def destroy
    if @place.destroy
      redirect_to user_path(@user)
      flash[:error] = "DId this work?"
    else
      flash[:error] = "Not YET!"
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_place
    @place = Place.find(params[:id])
  end


end
