class CreatePhcscriptcdnScriptVersions < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_versions do |t|

			t.string :scriptversion

			t.string :user_id
			t.string :membership_id
			t.string :oganization_id

			t.timestamps

		end

	end
end
