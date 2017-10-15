class Order < ApplicationRecord
  belongs_to :record
  belongs_to :client
  has_many :feedbacks
end
