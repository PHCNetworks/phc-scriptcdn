class CreatePhcscriptcdnScriptVersions < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_versions do |t|

      t.string :scriptversion

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
