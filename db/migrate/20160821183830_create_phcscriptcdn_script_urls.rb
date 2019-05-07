class CreatePhcscriptcdnScriptUrls < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_urls do |t|

      t.string :script_url
      t.date :script_url_release
      t.date :script_url_cdn_update

      t.string :slug

      t.string :user_id

      t.references :listing
      t.references :extension
      t.references :version

      t.timestamps

    end

  end
end
