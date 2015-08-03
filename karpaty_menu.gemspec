$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "karpaty_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "karpaty_menu"
  s.version     = KarpatyMenu::VERSION
  s.authors     = ["Rostyslav Diachok"]
  s.email       = ["infernalmaster1@gmail.com"]
  s.homepage    = "http://karpaty.ua"
  s.summary     = "menu"
  s.description = "Menu for karpaty.ua"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4"

  s.add_development_dependency "sqlite3"
end
