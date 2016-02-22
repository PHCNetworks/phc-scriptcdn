$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "phcscriptcdn/version"

# Gem and Engine Specifications
Gem::Specification.new do |s|

	s.name        = "phcscriptcdn"
	s.version     = Phcscriptcdn::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["bradley.j.potts@gmail.com"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "ScriptCDN Listing Engine."
	s.description = "PHCNetworks uses a similar engine to list their scripts off their cdn."
	s.license     = "MIT"

	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

	# Production Dependencies
	s.add_dependency 'pg', '~> 0.18.4'
	s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'

	# UI and Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	
	# Development Dependencies
	s.add_development_dependency 'sqlite3', '~> 1.3'
	s.add_development_dependency 'database_cleaner', '~> 1.5'
	s.add_development_dependency 'laundry', '~> 0.0.8'

	s.add_development_dependency 'factory_girl_rails', '~> 4.4.1'
	s.add_development_dependency 'rspec-rails', '~> 3.4'
	s.add_development_dependency 'capybara', '~> 2.6'

	s.add_development_dependency 'faker', '~> 1.6'
	s.add_development_dependency 'selenium-webdriver', '~> 2.52'

end