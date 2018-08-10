# frozen_string_literal: true

# app/models/category.rb
class Category < ApplicationRecord
  has_many :category_microposts, dependent: :destroy, validate: false
  has_many :microposts, through: :category_microposts
end
