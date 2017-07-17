class Trip < ApplicationRecord
  belongs_to :captain, class_name: 'User'
  has_many :users, through: :bookings
  has_many :bookings
end
