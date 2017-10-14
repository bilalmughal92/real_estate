class Record < ApplicationRecord

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
end
