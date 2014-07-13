class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :role
    end
  end
end
