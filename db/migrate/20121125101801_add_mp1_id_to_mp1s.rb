class AddMp1IdToMp1s < ActiveRecord::Migration
  def change
    add_column :mp1s, :mp1_id, :integer
  end
end
