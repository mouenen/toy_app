# frozen_string_literal: true

# db/migrate/20180802022442_add_name_to_user.rb
class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
  end
end
