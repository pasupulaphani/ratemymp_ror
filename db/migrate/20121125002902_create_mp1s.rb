class CreateMp1s < ActiveRecord::Migration
  def change
    create_table :mp1s do |t|
      t.integer :twfy_mpid
      t.integer :rating1
      t.integer :rating2
      t.integer :rating3
      t.integer :rating4

      t.timestamps
    end
  end
end
