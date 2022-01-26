require 'pry'


class ReservationsController < ApplicationController

    get "/reservations" do
        Reservation.all.to_json({include: :restaurant})
    end

    post "/reservations" do
        # binding.pry
        reso = Reservation.create(name: params[:name], phone_number: params[:phone_number], time: params[:time], restaurant_id: params[:restaurant_id])
        reso.to_json
    end




end