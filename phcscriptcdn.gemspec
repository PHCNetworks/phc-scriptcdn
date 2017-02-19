$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "phcscriptcdn/version"

# Gem Spec Information
Gem::Specification.new do |spec|

  spec.name        = "phcscriptcdn"
  spec.version     = Phcscriptcdn::VERSION
  spec.authors     = ["BradPotts"]
  spec.email       = ["info@phcnetworks.net"]
  spec.homepage    = "https://phcnetworks.net/"
  spec.summary     = "PHCScriptCDN - Rails Script CDN Engine"
  spec.description = "PHCScriptCDN(4) rails script management engine for website script CDN listings."
  spec.license     = "MIT"
  
  # Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  
  # Main Dependencies
  spec.add_dependency 'rails', '~> 5.0', '>= 5.0.1'
  spec.add_dependency 'pg', '~> 0.19.0'
  spec.add_dependency 'paper_trail', '~> 6.0', '>= 6.0.2'
  
  # PHCEngines & Theme Dependencies
  spec.add_dependency 'phcadmin3', '~> 1.4'
  spec.add_dependency 'phctitleseo', '~> 4.1'
  spec.add_dependency 'phcnotifi', '~> 3.7'
  
  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.2', '>= 4.2.2'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
  spec.add_dependency 'country_select', '~> 3.0'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'
  
  # API Dependencies
  spec.add_dependency 'oj', '~> 2.18', '>= 2.18.1'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
  spec.add_dependency 'responders', '~> 2.3'
  
  # WYSIWYG Editor Dependencies
  spec.add_dependency 'summernote-rails', '~> 0.8.2.0'
  spec.add_dependency 'codemirror-rails', '~> 5.16'
  
  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.0'
  spec.add_dependency 'cloudinary', '~> 1.4'
  
  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails', '~> 3.5', '>= 3.5.2'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8'
  spec.add_development_dependency 'capybara', '~> 2.12', '>= 2.12.1'
  spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'
  
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.3'
  
  spec.add_development_dependency 'faker', '~> 1.7', '>= 1.7.3'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.1'

end

