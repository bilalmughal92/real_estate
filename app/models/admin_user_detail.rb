class AdminUserDetail < ApplicationRecord
  validates :email, uniqueness: true
end
