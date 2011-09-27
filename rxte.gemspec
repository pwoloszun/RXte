# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rxte/version"

Gem::Specification.new do |s|
  s.name = "rxte"
  s.version = RXte::VERSION
  s.platform = Gem::Platform::RUBY
  s.homepage = "https://github.com/pwoloszun/RXte"
  s.authors = ["Piotr Woloszun", "RocketMind software"]
  s.email = ["piotr.woloszun@rocketmind.pl", "piotr.woloszun@gmail.com"]
  s.description = "Ruby gem for linux xte"
  s.summary = "Ruby gem for linux xte"

  s.files = `git ls-files`.split("\n").sort
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency("rspec", ">= 2.5.0")
end
