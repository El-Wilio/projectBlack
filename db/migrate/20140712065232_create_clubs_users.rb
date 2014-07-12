class CreateClubsUsers < ActiveRecord::Migration
  def change
    create_table :clubs_users, id: false do |t|
      t.belongs_to :club, index: true
      t.belongs_to :user, index: true
      t.integer :power
    end
  end
end
