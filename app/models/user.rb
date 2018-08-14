# frozen_string_literal: true

# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :microposts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, length: { in: 6..20, message: 'must in 6 - 20 byte' }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
