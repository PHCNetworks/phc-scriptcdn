# This migration comes from phcscriptcdn (originally 20160821183714)
class CreatePhcscriptcdnScriptAuthors < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_authors do |t|

      t.string :authorfirstname
      t.string :authorlastname

      t.string :authorwebsite
      t.string :authorgithub

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
