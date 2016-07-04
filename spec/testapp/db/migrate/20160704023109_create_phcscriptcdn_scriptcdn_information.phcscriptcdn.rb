# This migration comes from phcscriptcdn (originally 20160704005455)
class CreatePhcscriptcdnScriptcdnInformation < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_scriptcdn_information do |t|

			t.string :scripttitle
			t.text :scriptdescription

			t.string :scriptcategory

			t.string :scriptwebsite
			t.string :scripttwitter
			t.string :scriptgithub

			t.date :scriptinitialrelease
			t.string :scriptlicence
			t.string :scriptplatform
			t.string :scriptstatus

			t.references :main, index: true

			t.timestamps null: false

		end

	end
end
