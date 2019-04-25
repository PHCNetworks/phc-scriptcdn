# This migration comes from phcaccounts (originally 20171022205220)
class AddUserinfoToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :phcaccounts_users, :firstname, :string
    add_column :phcaccounts_users, :lastname, :string
    add_column :phcaccounts_users, :username, :string
    add_column :phcaccounts_users, :org_id, :string

    add_index :phcaccounts_users, :firstname
    add_index :phcaccounts_users, :lastname
    add_index :phcaccounts_users, :username, unique: true
    add_index :phcaccounts_users, :org_id, unique: true

  end
end
