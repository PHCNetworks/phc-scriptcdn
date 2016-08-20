class CreatePhcscriptcdnScriptUrls < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_urls do |t|

			t.string :authorfirstname
			t.string :authorlastname
			
			t.string :authorwebsite
			t.string :authorgithub
			t.string :authortwitter


			t.string :user_id
			t.string :membership_id
			t.string :oganization_id

			t.timestamps

		end

	end
end
