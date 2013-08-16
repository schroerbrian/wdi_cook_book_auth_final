class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :active_flag, :boolean
    add_column :users, :admin_flag, :boolean
  end
end
