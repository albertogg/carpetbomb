# -*- encoding: utf-8 -*-

require File.expand_path('../lib/carpetbomb/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "carpetbomb"
  s.version = Carpetbomb::VERSION
  s.authors = ["albertogg"]
  s.email   = ["albertogrespan@gmail.com"]
  s.homepage = "https://github.com/albertogg/carpetbomb"
  s.summary = %q{Markdown and erb template handler for Ruby on Rails using Redcarpet.}
  s.description = %q{Markdown and erb (side by side) template handler for Ruby on Rails using Redcarpet.}

  s.files = `git ls-files`.split($/)
  s.require_path = %w[lib]
  s.license = 'MIT'

  s.add_dependency "redcarpet", "~> 3.1.0"
end
