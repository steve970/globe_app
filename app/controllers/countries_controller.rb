class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def create
    @country = Country.new(country_params)
    @country.save
    redirect_to user_path(@user)
  end


  private

  def country_params
    params.require(:country).permit(:name)
  end


end
