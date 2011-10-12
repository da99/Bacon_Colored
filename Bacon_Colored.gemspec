# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "Bacon_Colored/version"

Gem::Specification.new do |s|
  s.name        = "Bacon_Colored"
  s.version     = Bacon_Colored::VERSION
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = ""
  s.summary     = %q{Adds color to your spec runs.}
  s.description = %q{
    Adds color to your spec runs.
    Inspired by GreenEggs: https://github.com/fantasticmf/greeneggs
  }

  s.rubyforge_project = "Bacon_Colored"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
  
  s.add_runtime_dependency 'bacon'
  s.add_runtime_dependency 'colored'
  
end
