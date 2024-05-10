class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :profile, presence: true
         validates :occuption, presence: true
         validates :position, presence: true
         has_many :prototypes
  end
