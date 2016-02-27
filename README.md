[![security](https://hakiri.io/github/PHCNetworks/phc-scrtipcdn/master.svg)](https://hakiri.io/github/PHCNetworks/phc-scrtipcdn/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-scrtipcdn)
[![Gem Version](https://badge.fury.io/rb/phcscriptcdn.svg)](https://badge.fury.io/rb/phcscriptcdn)
  
### PHC-ScriptCDN (Script Listing Engine) Documentation
PHC-ScriptCDN is similar to PHCNetworks own script CDN listing system.

#### Step 1 - Add PHCScriptCDN to your gemfile  

	gem 'phcscriptcdn', '~> 0.5.6'
	bundle exec install  
  
#### Step 2 - Add PHCScriptCDN database migration files  

	rake railties:install:migrations  
	rake db:migrate  
  
#### Step 3 - Mount the Engine in your Routes File  
Mount the Engine in your Routes File (App must have Root route)  
  
	mount Phcscriptcdn::Engine, :at => '/'  
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcscriptcdn:views

#### Step 5 - Recompile Assets  
PHCPress UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile  
  