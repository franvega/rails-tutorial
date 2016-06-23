class Parking < ActiveRecord::Base
  validates :address, presence: true, length: { maximum: 2 }
end
