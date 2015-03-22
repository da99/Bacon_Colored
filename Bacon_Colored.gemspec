# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "Bacon_Colored"
  s.version     = `cat VERSION`
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = "https://github.com/da99/Bacon_Colored"
  s.summary     = %q{Adds color to your Bacon runs.}
  s.description = %q{
    require "bacon";
    require "Bacon_Colored";
  }

  s.rubyforge_project = "Bacon_Colored"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'bacon', '~> 1.0'
  s.add_runtime_dependency 'colored'
end
