# frozen_string_literal: true

# db/migrate/20180806110910_add_microposts_count_to_category.rb
class AddMicropostsCountToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :microposts_count, :integer, default: 0
  end
end
