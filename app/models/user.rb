class User < ApplicationRecord
  has_many :spots_joined, through: :memberships, source: :spot
  has_many :spots, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :memberships, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
end
