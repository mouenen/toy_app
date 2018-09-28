# frozen_string_literal: true

# db/migrate/20180810075139_foreign_key.rb
class ForeignKey < ActiveRecord::Migration[5.2]
  def change
    # add_foreign_key :microposts, :users
    add_foreign_key :comments, :microposts
  end
end
