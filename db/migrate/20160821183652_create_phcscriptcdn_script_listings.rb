class CreatePhcscriptcdnScriptListings < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_listings do |t|

      t.string :script_title
      t.text :script_description

      t.string :script_source
      t.string :script_website
      t.string :script_github

      t.date :script_initial_release
      t.date :script_lastest_release
      t.date :script_beta_release
      t.date :script_lastest_release_cdn
      t.string :script_status

      t.string :slug

      t.string :user_id

      t.references :licence
      t.references :author

      t.timestamps

    end

  end
end
