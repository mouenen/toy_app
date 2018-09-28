# frozen_string_literal: true

# db/migrate/20180814020354_add_user_id_to_comment.rb
class AddUserIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user_id, :bigint, limit: 20, null: false
    add_foreign_key :comments, :users
  end
end
