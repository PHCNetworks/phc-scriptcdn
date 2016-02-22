class CreatePhcscriptcdnScriptcdnScripturls < ActiveRecord::Migration
  def change
    create_table :phcscriptcdn_scriptcdn_scripturls do |t|
      t.string :scrpturlname
      t.string :scrpturlphc
      t.string :scrpturltype
      t.references :scriptversion, index: true, foreign_key: true
      t.references :script, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
