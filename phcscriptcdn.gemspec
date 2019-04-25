$:.push File.expand_path("lib", __dir__)
require "phcscriptcdn/version"

Gem::Specification.new do |phc_gem_spec|

  phc_gem_spec.name        = "phcscriptcdn"
  phc_gem_spec.version     = Phcscriptcdn::VERSION
  phc_gem_spec.authors     = ["BradPotts"]
  phc_gem_spec.email       = ["info@phcdevworks.com"]
  phc_gem_spec.homepage    = "https://phcdevworks.com"
  phc_gem_spec.summary     = "Rails 5.2 App Engine"
  phc_gem_spec.description = "Ruby on Rails 5.2 Engine for CDN Script Listings"
  phc_gem_spec.license     = "MIT"

  #Load Engine Files
  phc_gem_spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  phc_gem_spec.add_dependency 'rails', '~> 5.2', '>= 5.2.3'

  # Admin Panel Theme Dependencies
  phc_gem_spec.add_dependency 'phcadmin1', '~> 48.3'
  phc_gem_spec.add_dependency 'phcadmin2', '~> 50.3'
  phc_gem_spec.add_dependency 'phcadmin3', '~> 43.3'
  phc_gem_spec.add_dependency 'phcadmin4', '~> 25.3'
  phc_gem_spec.add_dependency 'phcadmin5', '~> 24.3'
  phc_gem_spec.add_dependency 'phcadmin6', '~> 13.3'
  phc_gem_spec.add_dependency 'phcadmin7', '~> 7.3'

  # Website Theme Dependencies
  phc_gem_spec.add_dependency 'phctheme1', '~> 53.3'
  phc_gem_spec.add_dependency 'phctheme2', '~> 42.3'
  phc_gem_spec.add_dependency 'phctheme3', '~> 22.3'
  phc_gem_spec.add_dependency 'phctheme4', '~> 19.3'
  phc_gem_spec.add_dependency 'phctheme5', '~> 15.3'
  phc_gem_spec.add_dependency 'phctheme6', '~> 8.3'
  phc_gem_spec.add_dependency 'phctheme7', '~> 2.3'

  # PHC Helper Dependencies
  phc_gem_spec.add_dependency 'phccorehelpers', '~> 3.3'
  phc_gem_spec.add_dependency 'phcmenus', '~> 2.3'
  phc_gem_spec.add_dependency 'phcnotifi', '~> 44.3'
  phc_gem_spec.add_dependency 'phctitleseo', '~> 45.3'

  # UI & URL Frontend Dependencies
  phc_gem_spec.add_dependency 'friendly_id', '~> 5.2'
  phc_gem_spec.add_dependency 'gravtastic', '~> 3.2'

  # Images & Service Support Dependencies
  phc_gem_spec.add_dependency 'aws-sdk-s3', '~> 1.36'
  phc_gem_spec.add_dependency 'google-cloud-storage', '~> 1.18'
  phc_gem_spec.add_dependency 'mini_magick', '~> 4.9'

  # API Dependencies
  phc_gem_spec.add_dependency 'httparty', '~> 0.16.4'
  phc_gem_spec.add_dependency 'multi_json', '~> 1.13'
  phc_gem_spec.add_dependency 'oj', '~> 3.7'
  phc_gem_spec.add_dependency 'rabl', '~> 0.14.0'
  phc_gem_spec.add_dependency 'responders', '~> 2.4'

  # Database & Paper Trail Dependencies
  phc_gem_spec.add_dependency 'paper_trail', '~> 10.3'
  phc_gem_spec.add_dependency 'pg', '~> 1.1'

  # Security Dependencies
  phc_gem_spec.add_dependency 'phcaccounts', '~> 36.0'

  # Development Dependencies
  phc_gem_spec.add_development_dependency 'sqlite3', '~> 1.3', '< 1.4'
  phc_gem_spec.add_development_dependency 'byebug', '~> 11.0'
  phc_gem_spec.add_development_dependency 'capybara', '~> 3.16'
  phc_gem_spec.add_development_dependency 'minitest', '~> 5.11'
  phc_gem_spec.add_development_dependency 'rspec-rails', '~> 3.8'

  # Extra Development Dependencies
  phc_gem_spec.add_development_dependency 'nokogiri', '~> 1.10'
  phc_gem_spec.add_development_dependency 'database_cleaner', '~> 1.7'
  phc_gem_spec.add_development_dependency 'selenium-webdriver', '~> 3.141'

  phc_gem_spec.add_development_dependency 'factory_bot_rails', '~> 5.0'
  phc_gem_spec.add_development_dependency 'faker', '~> 1.9'
  phc_gem_spec.add_development_dependency 'launchy', '~> 2.4'

end
