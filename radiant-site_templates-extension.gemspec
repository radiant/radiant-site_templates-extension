# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-site_templates-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-site_templates-extension"
  s.version     = RadiantSiteTemplatesExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Radiant CMS Dev Team"]
  s.email       = ["radiant@radiantcms.org"]
  s.homepage    = "http://radiantcms.org/"
  s.summary     = %q{Site Templates for Radiant CMS}
  s.description = %q{Standard site templates}

  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]
end
