# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capybara_discoball/version"

Gem::Specification.new do |s|
  s.name        = "capybara_discoball"
  s.version     = Capybara::Discoball::VERSION
  s.authors     = ["Mike Burns"]
  s.email       = ["mburns@thoughtbot.com"]
  s.homepage    = ""
  s.summary     = %q{Spin up an external server just for Capybara}
  s.description = <<-DESC
When ShamRack doesn't quite cut it; when your JavaScript and non-Ruby
code needs to hit an external API for your tests; when you're excited
about spinning up a full server instead of faking out Net::HTTP: we
present the Discoball.
  DESC

  s.rubyforge_project = "capybara_discoball"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'capybara'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'turnip'
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'sinatra'

  # Rails dependencies
  s.add_development_dependency 'rails'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'uglifier'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'therubyracer'
end
