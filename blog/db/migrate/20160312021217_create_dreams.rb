class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.text :title
      t.text :text
      t.text :content
			t.references :user_id, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :dreams, [:user_id, :created_at]
  end
end
