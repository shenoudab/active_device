# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_device/version"

Gem::Specification.new do |s|
  s.name        = "active_device"
  s.version     = ActiveDevice::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Shenouda Bertel"]
  s.email       = ["sbertel@mobithought.com"]
  s.homepage    = "http://mobithought.com"
  s.summary     = %q{Mobile Device Detector"}
  s.description = %q{Device UserAgent Detector}

  s.rubyforge_project = "active_device"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
