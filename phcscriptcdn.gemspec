$:.push File.expand_path("lib", __dir__)
require "phcscriptcdn/version"

Gem::Specification.new do |phc_gem_spec|

  phc_gem_spec.name        = "phcscriptcdn"
  phc_gem_spec.version     = Phcscriptcdn::VERSION
  phc_gem_spec.authors     = ["BradPotts"]
  phc_gem_spec.email       = ["info@phcnetworks.net"]
  phc_gem_spec.homepage    = "https://phcnetworks.net/"
  phc_gem_spec.summary     = "Rails 5.2 Full App Engine"
  phc_gem_spec.description = "PHCScriptCDN(2018) Rails script management engine for website script CDN listings."
  phc_gem_spec.license     = "MIT"

  #Load Engine Files
  phc_gem_spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  phc_gem_spec.add_dependency 'rails', '~> 5.2', '>= 5.2.1'

  # Admin Panel Theme Dependencies
  phc_gem_spec.add_dependency 'phcadmin1', '~> 29.0'
  phc_gem_spec.add_dependency 'phcadmin2', '~> 29.0'
  phc_gem_spec.add_dependency 'phcadmin3', '~> 24.0'
  phc_gem_spec.add_dependency 'phcadmin4', '~> 6.0'
  phc_gem_spec.add_dependency 'phcadmin5', '~> 6.0'

  # Website Theme Dependencies
  phc_gem_spec.add_dependency 'phctheme1', '~> 35.0'
  phc_gem_spec.add_dependency 'phctheme2', '~> 24.0'
  phc_gem_spec.add_dependency 'phctheme3', '~> 5.0'

  # PHC Helper Dependencies
  phc_gem_spec.add_dependency 'phcnotifi', '~> 26.0'
  phc_gem_spec.add_dependency 'phctitleseo', '~> 27.0'

  # UI & URL Frontend Dependencies
  phc_gem_spec.add_dependency 'country_select', '~> 3.1'
  phc_gem_spec.add_dependency 'friendly_id', '~> 5.2'
  phc_gem_spec.add_dependency 'gravtastic', '~> 3.2'

  # Images & Service Support Dependencies
  phc_gem_spec.add_dependency 'aws-sdk-s3', '~> 1.17'
  phc_gem_spec.add_dependency 'gmaps-autocomplete-rails', '~> 0.3.1'
  phc_gem_spec.add_dependency 'google-cloud-storage', '~> 1.13'
  phc_gem_spec.add_dependency 'mini_magick', '~> 4.8'

  # API Dependencies
  phc_gem_spec.add_dependency 'httparty', '~> 0.16.2'
  phc_gem_spec.add_dependency 'multi_json', '~> 1.13'
  phc_gem_spec.add_dependency 'oj', '~> 3.6'
  phc_gem_spec.add_dependency 'rabl', '~> 0.13.1'
  phc_gem_spec.add_dependency 'responders', '~> 2.4'

  # Database & Paper Trail Dependencies
  phc_gem_spec.add_dependency 'paper_trail', '~> 9.2'
  phc_gem_spec.add_dependency 'pg', '~> 0.21.0'

  # Security & User Account Dependencies
  phc_gem_spec.add_dependency 'phcaccounts', '~> 15.0'

  # Development Dependencies
  phc_gem_spec.add_development_dependency 'byebug', '~> 10.0'
  phc_gem_spec.add_development_dependency 'capybara', '~> 3.6'
  phc_gem_spec.add_development_dependency 'minitest', '~> 5.11'
  phc_gem_spec.add_development_dependency 'rspec-rails', '~> 3.8'

  phc_gem_spec.add_development_dependency 'factory_bot_rails', '~> 4.11'
  phc_gem_spec.add_development_dependency 'faker', '~> 1.9'
  phc_gem_spec.add_development_dependency 'launchy', '~> 2.4'

  phc_gem_spec.add_development_dependency 'sqlite3', '~> 1.3'

  # Extra Development & Testing Dependencies
  phc_gem_spec.add_development_dependency 'letter_opener', '~> 1.6'
  phc_gem_spec.add_development_dependency 'shoulda-matchers', '~> 3.1'
  phc_gem_spec.add_development_dependency 'simplecov', '~> 0.16.1'

  phc_gem_spec.add_development_dependency 'nokogiri', '~> 1.8'
  phc_gem_spec.add_development_dependency 'database_cleaner', '~> 1.7'
  phc_gem_spec.add_development_dependency 'selenium-webdriver', '~> 3.14'

end
