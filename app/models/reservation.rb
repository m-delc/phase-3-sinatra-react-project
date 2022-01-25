class Reservation < ActiveRecord::Base
    has_one :restaurant
end