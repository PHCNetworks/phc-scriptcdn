# This migration comes from phcaccounts (originally 20190402234422)
class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :phcaccounts_users, :role, :integer
  end
end
