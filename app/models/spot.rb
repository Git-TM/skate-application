class Spot < ApplicationRecord
  has_many_attached :photos
  has_many :spotphotos, dependent: :destroy
  has_many :videotricks
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
