class CreateClubsTags < ActiveRecord::Migration
  def change
    create_table :clubs_tags, id: false do |t|
      t.belongs_to :club, index: true
      t.belongs_to :tag, index: true
    end
  end
end
