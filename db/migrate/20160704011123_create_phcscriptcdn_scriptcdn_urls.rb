class CreatePhcscriptcdnScriptcdnUrls < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_scriptcdn_urls do |t|

			t.string :scripturl
			t.string :scripturlext

			t.references :main, index: true

			t.string :user_id
			t.string :membership_id
			t.string :oganization_id

			t.timestamps null: false
		end

	end
end
