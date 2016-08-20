class CreatePhcscriptcdnScriptVersions < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_versions do |t|

			t.string :scriptversion

			t.timestamps

		end

	end
end
