# frozen_string_literal: true

# app/models/category_micropost.rb
class CategoryMicropost < ApplicationRecord
  belongs_to :micropost
  belongs_to :category, counter_cache: :microposts_count
end
