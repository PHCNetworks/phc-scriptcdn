# This migration comes from phcscriptcdn (originally 20160821183652)
class CreatePhcscriptcdnScriptListings < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_listings do |t|

      t.string :scripttitle
      t.text :scriptdescription
      t.string :descriptionsource

      t.string :scriptwebsite
      t.string :scriptgithub

      t.date :scriptinitialrelease
      t.date :scriptlastestrelease
      t.date :scriptbetarelease
      t.date :scriptlastestreleasecdn

      t.string :scriptstatus

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.references :version
      t.references :licence
      t.references :author

      t.timestamps

    end

  end
end
