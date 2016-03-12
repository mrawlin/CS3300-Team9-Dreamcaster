class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.text :title
      t.text :text

      t.timestamps null: false
    end
  end
end
