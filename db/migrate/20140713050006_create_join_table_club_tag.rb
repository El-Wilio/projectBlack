class CreateJoinTableClubTag < ActiveRecord::Migration
  def change
    create_join_table :clubs, :tags do |t|
      # t.index [:club_id, :tag_id]
      # t.index [:tag_id, :club_id]
    end
  end
end
