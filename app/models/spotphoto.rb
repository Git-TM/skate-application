class Spotphoto < ApplicationRecord
  belongs_to :spot
  has_many_attached :photos
end
