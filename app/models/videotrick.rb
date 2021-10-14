class Videotrick < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  has_one_attached :video
end
