class CreatePhcscriptcdnScriptAuthors < ActiveRecord::Migration[5.0]
  def change
  
    create_table :phcscriptcdn_script_authors do |t|
    
      t.string :authorfirstname
      t.string :authorlastname
      
      t.string :authorwebsite
      t.string :authorgithub
      t.string :authortwitter
      
      t.string :user_id
      t.string :user_name
      
      t.timestamps
    
    end
  
  end
end
