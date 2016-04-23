class AdduserIdToDreams < ActiveRecord::Migration
  def change
        add_column :dream, :user_id, :string
        add_column :dream, :content, :text
        add_column :dream, :user, :references
        add_column :dream, :created_at, :string
  end
end