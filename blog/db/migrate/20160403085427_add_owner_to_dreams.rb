class AddOwnerToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :owner, :string
  end
end
