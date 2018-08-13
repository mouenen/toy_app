# frozen_string_literal: true

# db/migrate/20180810074138_creat_comments.rb
class CreatComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
