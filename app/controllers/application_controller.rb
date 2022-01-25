require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/resos" do
    reso = Reservation.all.order(:name)
    reso.to_json
  end

  post "/resos" do
    reso = Reservation.create(name: params[:name], phone_number: params[:phone_number], time: params[:time])
    # binding.pry
    reso.to_json
  end


end
