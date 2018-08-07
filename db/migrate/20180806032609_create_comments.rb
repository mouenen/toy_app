# frozen_string_literal: true

# db/migrate/20180806032609_create_comments.rb
class CreateComments < ActiveRecord::Migration[5.2]
  def create
    create_table :comments do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
