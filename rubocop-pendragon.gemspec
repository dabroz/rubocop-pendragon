lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop-pendragon"

Gem::Specification.new do |s|
  s.name = "rubocop-pendragon"
  s.summary = "Pendragon Ruby styling, mostly for Rails"
  s.author = "Thomas Pendragon"
  s.email = "me@thomaspendragon.com"
  s.homepage = "https://github.com/dabroz/rubocop-pendragon"

  s.license = "MIT"

  s.version = RubocopPendragon::VERSION
  s.platform = Gem::Platform::RUBY

  s.add_dependency "rubocop", "~> 1.84"
  s.add_dependency "rubocop-capybara", "~> 2.22"
  s.add_dependency "rubocop-factory_bot", "~> 2.28"
  s.add_dependency "rubocop-performance", "~> 1.26"
  s.add_dependency "rubocop-rails", "~> 2.34"
  s.add_dependency "rubocop-rake", "~> 0.7"
  s.add_dependency "rubocop-rspec", "~> 3.9"
  s.add_dependency "rubocop-rspec_rails", "~> 2.32"

  s.required_ruby_version = ">= 3.3.0"

  s.files = %w[rubocop.yml]
  s.metadata["rubygems_mfa_required"] = "true"
end
