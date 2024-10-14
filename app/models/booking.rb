class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :massage_type
end
