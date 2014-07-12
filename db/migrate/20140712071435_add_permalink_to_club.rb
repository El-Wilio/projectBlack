class AddPermalinkToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :permalink, :string
  end
end
