# frozen_string_literal: true

# app/models/micropost.rb
class Micropost < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  delegate :name, to: :user, prefix: true
  has_many :category_microposts, dependent: :destroy
  has_many :categories, through: :category_microposts
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :content, presence: true, length: { maximum: 140 }
end
