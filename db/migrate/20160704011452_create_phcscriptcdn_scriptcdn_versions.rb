class CreatePhcscriptcdnScriptcdnVersions < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_scriptcdn_versions do |t|

			t.string :versionnumber

			t.references :main, index: true

			t.timestamps null: false

		end

	end
end
