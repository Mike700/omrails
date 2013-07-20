class Listing < ActiveRecord::Base
  attr_accessible :description, :location, :rate, :title, :vehicle

  validates :title, presence: true

  validates :description, presence: true

  validates :location, presence: true

  validates :rate, presence: true

  validates :vehicle, presence: true
end
