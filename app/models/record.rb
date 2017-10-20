class Record < ApplicationRecord
  has_many :orders
  has_many :feedbacks

  mount_uploader :image, ImageUploader
  
  def self.cities
    ['Lahore', 'Islamabad', 'Karachi']
  end

  def self.towns
    ['Bahria Town', 'Model Town', 'Johar Town']
  end

  def self.areas
    ['Market', 'Residential']
  end

  def self.societies
    ['Eden Value Homes', 'Defence Housing Society']
  end

  def self.blocks
    ['A', 'B', 'C', 'D']
  end

  def self.statuses
    ['Rental', 'For Sale']
  end

  def get_status
    status == "Rental" ? "Rent" : "Purchase"
  end

  def get_image
    self.image_url(:fit_screen).present? ? self.image_url(:fit_screen) : self.image_url
  end
end
