class CreatePhcscriptcdnScriptUrls < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_urls do |t|

			t.string :scripturl

			t.timestamps


		end

	end
end
