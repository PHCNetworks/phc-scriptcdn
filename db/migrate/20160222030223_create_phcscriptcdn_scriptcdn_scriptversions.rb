class CreatePhcscriptcdnScriptcdnScriptversions < ActiveRecord::Migration
	def change
		create_table :phcscriptcdn_scriptcdn_scriptversions do |t|

			T.string :scrptversionpakname
			t.string :scrptversion

			t.timestamps null: false

		end
	end
end
