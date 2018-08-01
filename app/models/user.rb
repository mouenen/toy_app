class User < ApplicationRecord
  has_many :microposts
    validates :name, length: { in:6..20,message:'must in 6 - 20 byte'}
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
