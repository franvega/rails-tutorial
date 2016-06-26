class Parking < ActiveRecord::Base
  validates :address, presence: true, length: { maximum: 20 }
end
