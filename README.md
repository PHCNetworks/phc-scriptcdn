[![security](https://hakiri.io/github/PHCNetworks/phc-scriptcdn/master.svg)](https://hakiri.io/github/PHCNetworks/phc-scriptcdn/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn)
[![Gem Version](https://badge.fury.io/rb/phcscriptcdn.svg)](https://badge.fury.io/rb/phcscriptcdn)
  
### PHCScript CDN (Script Listing Engine) Documentation
PHCScriptCDN(2) script listing software to manage your online script CDN.

- Main script title and description.
- Script versions and script urls.

#### Step 1 - Add PHCScriptCDN Engine to your gemfile  

	gem 'phcscriptcdn', '~> 2.0', '>= 2.0.1'
	bundle install
  
#### Step 2 - Add Database Migration Files  

	rake phcscriptcdn:install:migrations
	rake db:migrate
  
#### Step 3 - Mount PHCScriptCDN in your Routes File  
Mount the Engine in your Routes File (App must have Root route)  
  
	mount Phcscriptcdn::Engine, :at => '/'  
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcscriptcdn:views

#### Step 5 - Recompile Assets  
PHCScriptCDN UI requires Bootstrap and FontAwesome to operate.  
  
	rake assets:clobber
	rake assets:precompile  