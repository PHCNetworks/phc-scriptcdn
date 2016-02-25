class CreatePhcscriptcdnScriptcdnScripts < ActiveRecord::Migration
	def change
		create_table :phcscriptcdn_scriptcdn_scripts do |t|

			t.string :scrptname
			t.text :scrptdescription
			t.references :scriptversion, index: true

			t.timestamps null: false

		end
	end
end
