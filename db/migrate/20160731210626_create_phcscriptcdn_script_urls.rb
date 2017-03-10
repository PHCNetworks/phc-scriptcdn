class CreatePhcscriptcdnScriptUrls < ActiveRecord::Migration[5.0]
  def change
  
    create_table :phcscriptcdn_script_urls do |t|
    
      t.string :scripturl
      t.date :scripturlrelease
      t.date :scripturlcdnupdate
      
      t.references :listing
      t.references :version
      t.references :extension
      
      t.string :user_id
      t.string :user_name
      
      t.timestamps
    
    end
  
  end
end