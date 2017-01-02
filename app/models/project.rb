class Project < ApplicationRecord
  belongs_to :user
  has_many :trackings
  validates :title, presence: true, length: { maximum: 200 }
end
