class Tracking < ApplicationRecord
  belongs_to :user
  validates :user, presence: true 
  validates :content, presence: true, length: { maximum: 20 }
end
