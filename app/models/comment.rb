# frozen_string_literal: true

# app/models/comment.rb
class Comment < ApplicationRecord
  belongs_to :micropost, foreign_key: 'micropost_id'
  belongs_to :user
end
