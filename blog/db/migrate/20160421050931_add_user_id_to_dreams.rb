class AddUserIdToDreams < ActiveRecord::Migration
  def change
    add_reference :dreams, :user, index: true, foreign_key: true
    add_column :dreams, :content, :text
  end
end
