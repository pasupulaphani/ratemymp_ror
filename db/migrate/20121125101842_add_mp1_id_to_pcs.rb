class AddMp1IdToPcs < ActiveRecord::Migration
  def change
    add_column :pcs, :mp1_id, :integer
  end
end
