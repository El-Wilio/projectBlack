class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, {null: false, default: "", length: { in: 5..25 }}
  end
end
