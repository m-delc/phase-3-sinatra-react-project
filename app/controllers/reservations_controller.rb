require 'pry'


class ReservationsController < ApplicationController

    get "/reservations" do
        Reservation.all.to_json({include: :restaurant})
    end

    post "/reservations" do
        # binding.pry
        reso = Reservation.create(name: params[:name], phone_number: params[:phone_number], time: params[:time], restaurant_id: params[:restaurant_id], party: params[:party])
        reso.to_json({include: :restaurant})
    end

    patch '/reservations/:id' do
        x = Reservation.find(params[:id])
        x.update(name: params[:name], phone_number: params[:phone_number], time: params[:time], restaurant_id: params[:restaurant_id], party: params[:party]).to_json({include: :restaurant})

    end

    delete '/reservations/:id' do
        x = Reservation.find(params[:id])
        x.destroy
        {message: 'Reservation deleted'}.to_json
    end



end