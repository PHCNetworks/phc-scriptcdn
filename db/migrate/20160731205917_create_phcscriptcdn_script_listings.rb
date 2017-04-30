class CreatePhcscriptcdnScriptListings < ActiveRecord::Migration[5.0]
  def change

    create_table :phcscriptcdn_script_listings do |t|

      t.string :scripttitle
      t.text :scriptdescription
      t.string :descriptionsource

      t.string :scriptwebsite
      t.string :scripttwitter
      t.string :scriptgithub

      t.date :scriptinitialrelease
      t.date :scriptlastestrelease
      t.date :scriptbetarelease
      t.date :scriptlastestreleasecdn

      t.string :scriptstatus

      t.string :user_id
      t.string :user_name

      t.references :version
      t.references :licence
      t.references :author

      t.timestamps

    end

  end
end
