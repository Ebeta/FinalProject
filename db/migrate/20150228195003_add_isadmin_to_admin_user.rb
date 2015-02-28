class AddIsadminToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :Isadmin, :boolean
  end
end
