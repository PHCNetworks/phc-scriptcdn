class CreatePhcscriptcdnScriptExtensions < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_extensions do |t|

      t.string :scriptextensionname
      t.text :scriptextensiondes
      t.string :scriptextension

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
