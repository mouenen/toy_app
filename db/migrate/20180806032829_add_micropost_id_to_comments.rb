# frozen_string_literal: true

# db/migrate/20180806032829_add_micropost_id_to_comments.rb
class AddMicropostIdToComments < ActiveRecord::Migration[5.2]
  def create
    add_column :comments, :micropost_id, :integer
  end
end
