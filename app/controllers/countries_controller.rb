class CountriesController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:user_id])
    @country = @user.countries.find(params[:id])
  end

end
