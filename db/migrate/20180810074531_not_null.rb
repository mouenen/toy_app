# frozen_string_literal: true

# db/migrate/20180810074531_not_null.rb
class NotNull < ActiveRecord::Migration[5.2]
  def change
    # Change table Users
    change_column_null :users, :name, false
    # Change table Microposts
    change_column_null :microposts, :content, false
    change_column :microposts, :user_id, :bigint, limit: 20, null: false
    # Change table Category_microposts
    change_column :category_microposts, :micropost_id, :bigint, limit: 20, null: false # rubocop:disable all
    change_column :category_microposts, :category_id, :bigint, limit: 20, null: false # rubocop:disable all
    # Change table Categories
    change_column_null :categories, :name, false
    change_column :categories, :microposts_count, :int, default: 0, null: false
    # Change table Comments
    change_column_null :comments, :name, false
    change_column_null :comments, :comment, false
    add_column :comments, :micropost_id, :bigint, limit: 20, null: false
  end
end
