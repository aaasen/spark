class RemoveMoreDailycredFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :email
    remove_column :users, :usename
    remove_column :users, :admin
    remove_column :users, :uid
  end

  def down
    add_column :users, :uid, :string
    add_column :users, :admin, :boolean
    add_column :users, :usename, :string
    add_column :users, :email, :string
  end
end
