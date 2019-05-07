# This migration comes from phcscriptcdn (originally 20160821183735)
class CreatePhcscriptcdnScriptExtensions < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_extensions do |t|

      t.string :script_extension_name
      t.text :script_extension_description
      t.string :script_extension

      t.string :slug

      t.string :user_id

      t.timestamps

    end

  end
end
