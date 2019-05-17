# This migration comes from phcscriptcdn (originally 20160821183805)
class CreatePhcscriptcdnScriptLicences < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_licences do |t|

      t.string :licence_name
      t.text   :licence_description

      t.string :licence_compatible_gpl
      t.string :licence_approval_fsf
      t.string :licence_approval_osi
      t.string :licence_approval_copyfree
      t.string :licence_approval_debian
      t.string :licence_approval_fedora

      t.string :slug

      t.string :user_id

      t.timestamps

    end

  end
end
