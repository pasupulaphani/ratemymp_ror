class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
      t.integer :mp_id
      t.integer :rating1
      t.integer :rating2
      t.integer :rating3
      t.integer :rating4
      t.string :postcode

      t.timestamps
    end
  end
end
