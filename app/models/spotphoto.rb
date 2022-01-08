class Spotphoto < ApplicationRecord
  belongs_to :spot
  has_one_attached :photo
end
