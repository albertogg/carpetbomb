# -*- encoding: utf-8 -*-

require File.expand_path('../lib/carpetbomb/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "carpetbomb"
  s.version = CarpetBomb::VERSION
  s.authors = ["albertogg"]
  s.email   = ["albertogrespan@gmail.com"]
  s.homepage = "https://github.com/albertogg/carpetbomb"
  s.summary = "Markdown templates for Ruby on Rails"
  s.description = "Markdown for Rails views that understands erb"
  s.files = `git ls-files`.split($/)
  s.require_path = %w[lib]
  s.license = 'MIT'

  s.add_dependency "redcarpet", "~> 3.0.0"
end
