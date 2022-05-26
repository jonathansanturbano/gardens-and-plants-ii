class Tag < ApplicationRecord
  has_many :plant_tags # tag.plant_tags
  has_many :plants, through: :plant_tags # tag.plants

  validates :name, presence: true, uniqueness: true
end
