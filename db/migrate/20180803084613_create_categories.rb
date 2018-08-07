# frozen_string_literal: true

# db/migrate/20180803084613_create_categories.rb
class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
