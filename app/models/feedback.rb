class Feedback < ApplicationRecord
  belongs_to :client
  belongs_to :record
  belongs_to :order
end
