class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
         #:recoverable, 
  has_many :trackings
  has_many :projects
  
  validates :name, presence: true, length: { maximum: 120  }
end
