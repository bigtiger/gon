# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gon/version"

Gem::Specification.new do |s|
  s.name        = "gon"
  s.version     = Gon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['gazay']
  s.email       = ['alex.gaziev@gmail.com']
  s.homepage    = ""
  s.summary     = %q{Get your Rails variables in your JS}
  s.description = %q{If you need to send some data to your js files and you don't want to do this with long way trough views and parsing - use this force!}

  s.rubyforge_project = "gon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
