class AddMicropostsCountToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :microposts_count, :integer, 
  end
end
