# This migration comes from phcaccounts (originally 20190511031119)
class AddTermsToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :phcaccounts_users, :terms_of_service, :boolean

  end
end
