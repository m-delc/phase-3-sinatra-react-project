class Reservation < ActiveRecord::Base
    has_many :restaurants
end