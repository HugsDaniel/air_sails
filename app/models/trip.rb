class Trip < ApplicationRecord
  belongs_to :captain, class_name: 'User'
  has_many :users, through: :bookings
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end
