class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  validates :username, presence: true, length: { minimum: 3 }, uniqueness: true
  
end
