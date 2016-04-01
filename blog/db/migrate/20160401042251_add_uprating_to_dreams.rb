class AddUpratingToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :uprating, :integer
    add_column :dreams, :downrating, :integer
  end
end
