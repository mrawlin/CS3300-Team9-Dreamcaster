class CreateSubthreads < ActiveRecord::Migration
  def change
    create_table :subthreads do |t|
      t.string :commenter
      t.text :body
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :subthreads, [:comment_id, :created_at]
  end
end
