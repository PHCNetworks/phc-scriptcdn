$:.push File.expand_path("lib", __dir__)
require "phcscriptcdn/version"

Gem::Specification.new do |phc_gem_spec|

  phc_gem_spec.name        = "phcscriptcdn"
  phc_gem_spec.version     = Phcscriptcdn::VERSION
  phc_gem_spec.authors     = ["PHCDevworks"]
  phc_gem_spec.email       = ["info@phcdevworks.com"]
  phc_gem_spec.homepage    = "https://phcdevworks.com/"
  phc_gem_spec.summary     = "Rails 5.2 App Engine"
  phc_gem_spec.description = "Ruby on Rails 5.2 Engine for CDN Script Listings"
  phc_gem_spec.license     = "MIT"

  # Load Engine FIles
  phc_gem_spec.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  phc_gem_spec.add_dependency 'rails', '~> 5.2', '>= 5.2.4.3'

  # Admin Panel Theme Dependencies
  phc_gem_spec.add_dependency "phcadmin1", "~> 51.2"
  phc_gem_spec.add_dependency "phcadmin2", "~> 53.2"
  phc_gem_spec.add_dependency "phcadmin3", "~> 46.2"
  phc_gem_spec.add_dependency "phcadmin4", "~> 28.2"
  phc_gem_spec.add_dependency "phcadmin5", "~> 27.2"
  phc_gem_spec.add_dependency "phcadmin6", "~> 16.2"
  phc_gem_spec.add_dependency "phcadmin7", "~> 10.2"

  # Website Theme Dependencies
  phc_gem_spec.add_dependency "phctheme1", "~> 56.2"
  phc_gem_spec.add_dependency "phctheme2", "~> 45.2"
  phc_gem_spec.add_dependency "phctheme3", "~> 25.2"
  phc_gem_spec.add_dependency "phctheme4", "~> 23.2"
  phc_gem_spec.add_dependency "phctheme5", "~> 18.2"
  phc_gem_spec.add_dependency "phctheme6", "~> 11.2"
  phc_gem_spec.add_dependency "phctheme7", "~> 5.2"
  
  # PHC Helper Dependencies
  phc_gem_spec.add_dependency "phccorehelpers", "~> 7.3"
  phc_gem_spec.add_dependency "phcmenus", "~> 5.3"
  phc_gem_spec.add_dependency "phcnotifi", "~> 49.3"
  phc_gem_spec.add_dependency "phctitleseo", "~> 48.3"
  
  # Frontend Dependencies
  phc_gem_spec.add_dependency "friendly_id", "~> 5.3"
  phc_gem_spec.add_dependency "gravtastic", "~> 3.2"
  
  # Images & Service Support Dependencies
  phc_gem_spec.add_dependency "aws-sdk-s3", "~> 1.67"
  phc_gem_spec.add_dependency "google-cloud-storage", "~> 1.26"
  phc_gem_spec.add_dependency "mini_magick", "~> 4.10"
  
  # API Dependencies
  phc_gem_spec.add_dependency "httparty", "~> 0.18"
  phc_gem_spec.add_dependency "multi_json", "~> 1.14"
  phc_gem_spec.add_dependency "oj", "~> 3.10"
  phc_gem_spec.add_dependency "rabl", "~> 0.14.3"
  phc_gem_spec.add_dependency "responders", "~> 3.0"
  
  # Database & Paper Trail Dependencies
  phc_gem_spec.add_dependency "paper_trail", "~> 10.3"
  phc_gem_spec.add_dependency "pg", "~> 1.2"

  # Security Dependencies
  phc_gem_spec.add_dependency 'phcaccounts', '~> 42.3'
  
  # Development Dependencies
  phc_gem_spec.add_development_dependency "sqlite3", "~> 1.4"
  phc_gem_spec.add_development_dependency "byebug", "~> 11.1"
  phc_gem_spec.add_development_dependency "capybara", "~> 3.32"
  phc_gem_spec.add_development_dependency "minitest", "~> 5.14"
  phc_gem_spec.add_development_dependency "rspec-rails", "~> 4.0"

  phc_gem_spec.add_development_dependency "factory_bot_rails", "~> 5.2"
  phc_gem_spec.add_development_dependency "faker", "~> 2.12"
  phc_gem_spec.add_development_dependency "launchy", "~> 2.5"
  
  # Extra Development Dependencies
  phc_gem_spec.add_development_dependency "nokogiri", "~> 1.10"
  phc_gem_spec.add_development_dependency "database_cleaner", "~> 1.8"
  phc_gem_spec.add_development_dependency "selenium-webdriver", "~> 3.142"

end
