$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "askalot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "askalot"
  s.version     = Askalot::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Askalot."
  s.description = "TODO: Description of Askalot."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", '~> 2.0'
  s.add_development_dependency "capybara", '~> 1.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.0'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'launchy'
end
