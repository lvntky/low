# frozen_string_literal: true
require_relative "lib/low/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-low"
  spec.version       = Low::VERSION
  spec.summary       = "A minimal, retro-inspired Jekyll theme for engineers who care about the metal."
  spec.homepage      = "https://github.com/lvntky/low"
  spec.license       = "MIT"

  spec.authors       = ["Levent Kaya"]
  spec.files         = Dir["**/*"].grep_v(%r{^(example/|script/|pkg/|\.git/)|\.gem$})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
end
