class WeatherController < ApplicationController
  def index

  end

  def search
    cookies[:zipcode] = params[:zipcode]
    @zipcode = params[:zipcode].to_i
    if @zipcode == 94122
      @weather = "It's raining! Get that umbrella now!"
    else
      @weather = "Sun's gonna be shining! No umbrella needed."
    end
  end
end
