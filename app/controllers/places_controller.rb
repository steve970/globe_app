class PlacesController < ApplicationController

  before_action :set_user, only:[:destroy]


  def destroy
    @place = @user.places.find(params[:id])
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

end
