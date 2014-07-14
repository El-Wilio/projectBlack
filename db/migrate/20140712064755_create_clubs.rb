class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name, null: false
      t.string :description
      t.string :permalink, null: false
      t.timestamps
    end


    add_index :clubs, :name,                unique: false
    add_index :clubs, :permalink,                unique: true


  end
end
