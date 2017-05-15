class CreatePhcscriptcdnScriptVersions < ActiveRecord::Migration[5.1]
  def change

    create_table :phcscriptcdn_script_versions do |t|

      t.string :scriptversion

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
