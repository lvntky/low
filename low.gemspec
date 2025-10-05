# frozen_string_literal: true
require_relative "lib/low/version"

Gem::Specification.new do |spec|
  spec.name          = "low"
  spec.version       = Low::VERSION
  spec.summary       = "A crisp, mono Jekyll theme."
  spec.homepage      = "https://github.com/you/low"
  spec.license       = "MIT"

  spec.authors       = ["Levent Kaya"]
  spec.files         = Dir["**/*"].grep_v(%r{^example/|^script/|\.gem$})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ">= 4.3", "< 5.0"
  spec.add_runtime_dependency "jekyll-seo-tag", ">= 2.8"
  spec.add_runtime_dependency "jekyll-feed", ">= 0.17"
  spec.add_runtime_dependency "jekyll-sitemap", ">= 1.4"
end
