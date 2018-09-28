# frozen_string_literal: true

# db/migrate/20180817052137_add_confirmable_to_devise.rb
class AddConfirmableToDevise < ActiveRecord::Migration[5.2]
  def change
    change_table(:users) do |t|
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email
    end
    add_index :users, :confirmation_token, unique: true
  end
end
