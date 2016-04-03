class AddCreatorToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :creator, :string
  end
end
