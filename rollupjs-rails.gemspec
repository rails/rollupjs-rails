require_relative "lib/rollup/version"

Gem::Specification.new do |spec|
  spec.name        = "rollupjs-rails"
  spec.version     = Rollup::VERSION
  spec.authors     = [ "David Heinemeier Hansson" ]
  spec.email       = "david@loudthinking.com"
  spec.homepage    = "https://github.com/rails/rollupjs-rails"
  spec.summary     = "Bundle and transpile JavaScript in Rails with rollup.js."
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
end
