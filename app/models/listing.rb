class Listing < ActiveRecord::Base
  attr_accessible :description, :location, :rate, :title, :vehicle, :image

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :rate, presence: true
  validates :vehicle, presence: true

  belongs_to :user
  validates :user_id, presence: true
  has_attached_file :image, styles: { thumbnail: "240x240>", large: "520x520>"}

  validates_attachment :image, presence: true,
                       content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                       size: { less_than: 2.megabytes },
                       :default_url => 'http://www.donaldcampbellmotors.co.uk/wp-content/uploads/2013/04/Awaiting-image2.jpg'
end
