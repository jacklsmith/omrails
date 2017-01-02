class Tracking < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :user, presence: true 
  validates :content, presence: true, length: { maximum: 90 }
end
