class RestaurantsController < ApplicationController

  def index
    require 'uri'
    require 'net/http'
    require 'openssl'

    url = URI("https://worldwide-restaurants.p.rapidapi.com/search")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/x-www-form-urlencoded'
    request["X-RapidAPI-Host"] = 'worldwide-restaurants.p.rapidapi.com'
    request["X-RapidAPI-Key"] = Rails.application.credentials.restaurants_api_key
    request.body = "language=en_US&limit=1000&location_id=297704&currency=USD"

    response = http.request(request)
    data = JSON.parse(response.read_body)["results"]["data"]
    # render json: data
    
    data.each do|d|
      # p d["name"]
      name = d["name"]
    end

    render json: name
    
    # render json: {message: "testing restaurant index"}
    # p Rails.application.credentials.restaurants_api_key
  end
  
end
