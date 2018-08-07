# frozen_string_literal: true

# app/models/comment.rb
class Comment < ApplicationRecord
  belongs_to :micropost
end
