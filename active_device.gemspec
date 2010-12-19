# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
Gem::Specification.new do |s|
  s.name = "active_device"
  s.version = "1.1.0"
  s.authors = ["Shenouda Bertel"]
  s.description = "Device UserAgent Detector"
  s.email = "sbertel@mobithought.com"
  s.homepage = "http://mobithought.com/"
  s.files = Dir.glob("{lib,rails,tasks,test}/**/*") + %w(MIT-LICENSE README Gemfile Rakefile active_device.gemspec)
  s.require_path = 'lib'
  s.summary = "Mobile Device Detector"
end
