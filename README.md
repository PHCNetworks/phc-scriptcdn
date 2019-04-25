### PHCScriptCDN (Script Listing Engine) Documentation
PHCScriptCDN Rails script management engine for website script CDN listings.

* Manage script CDN listings for websites.
* Main script title and description.
* Script versions and script URLs.

#### Step 1 - Add PHCScriptCDN to your gemfile  and run command  

	gem 'phcscriptcdn'
	bundle install

#### Step 2 - Copy PHCScriptCDN Database Tables
To copy PHCScriptCDN's required database migrations, copy each command individually to your terminal's command line.

	rails phcscriptcdn:install:migrations
	rails db:migrate

#### Step 3 - Mount PHCScriptCDN & Add Routes
Mount PHCMembers by adding code below to your routes file.  

	mount Phcscriptcdn::Engine, :at => '/'

#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.

	rails assets:clobber
	rails assets:precompile  

#### Step 5 - Generate Contact Form View (Customization)  
All PHCScriptCDN views and layouts can be overwritten by copying files to your application.

	rails generate phcscriptcdn:views
