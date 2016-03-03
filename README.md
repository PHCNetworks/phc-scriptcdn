[![security](https://hakiri.io/github/PHCNetworks/phc-scriptcdn/master.svg)](https://hakiri.io/github/PHCNetworks/phc-scriptcdn/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn)
[![Gem Version](https://badge.fury.io/rb/phcscriptcdn.svg)](https://badge.fury.io/rb/phcscriptcdn)
  
### PHC-ScriptCDN (Script Listing Engine) Documentation
PHCScript CDN is script listing software to manage a script CDN.

#### Step 1 - Add PHC-Script CDN to your gemfile  

	gem 'phcscriptcdn', '~> 0.5.8'
	bundle exec install  
  
#### Step 2 - Add database migration files  

	rake railties:install:migrations  
	rake db:migrate  
  
#### Step 3 - Mount PHC-Script CDN in your Routes File  
Mount the Engine in your Routes File (App must have Root route)  
  
	mount Phcscriptcdn::Engine, :at => '/'  
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcscriptcdn:views

#### Step 5 - Recompile Assets  
PHCPress UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile  
