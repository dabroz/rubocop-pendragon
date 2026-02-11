# Thomas Pendragon Ruby styling (mostly for Rails)

Ruby is a beautifully expressive language that tolerates many dialects and occasionally rewards your bad habits. If you and your team already have a style you like, keep it.

This style is for teams that want a solid default without holding a week-long meeting about trailing commas. The rules reflect the personal taste of Thomas Pendragon. Not objectively correct, just consistent.

It enables the Rails ecosystem extensions (`rubocop-rails`, `rubocop-rspec`, `rubocop-rspec_rails`, `rubocop-rake`), targets Ruby 3.3, shows cop names in output, excludes noisy generated/vendor/tmp files (plus a couple known offenders), prefers double quotes, disables most complexity/length Metrics nags, and leans hard toward “catch real bugs” cops in Lint, Security, Rails, and RSpec.

## Installation

Add this to your Gemfile:

```ruby
group :tools do
  gem "rubocop-pendragon", "~> 1.0.0", require: false
end
```

Then run:

```sh
bundle install
bundle binstubs rubocop
```

Then add a default `.rubocop.yml` file in the root of your application with:

```yml
# Pendragon Ruby styling for Rails
inherit_gem:
  rubocop-pendragon: rubocop.yml

# Your own specialized rules go here
```

Now you can run `./bin/rubocop` to check for compliance.

Autocorrect:

* `./bin/rubocop -a` safe autocorrect only
* `./bin/rubocop -A` safe + unsafe autocorrect

## What’s included

### Extensions enabled

This config loads the following RuboCop extensions:

* `rubocop-rails`
* `rubocop-rspec`
* `rubocop-rspec_rails`
* `rubocop-rake`

### Global defaults

* Ruby target: 3.3 (`AllCops: TargetRubyVersion: 3.3`)
* Cop names displayed in output (`AllCops: DisplayCopNames: true`)
* Excludes:

  * `db/schema.rb`
  * `tmp/*`, `tmp/**/*`
  * `vendor/**/*`
  * `lib/tasks/cucumber.rake`

### Opinionated style highlights

* String literals: double quotes (`Style/StringLiterals: EnforcedStyle: double_quotes`)
* Hash label shorthand: always (`Style/HashSyntax: EnforcedShorthandSyntax: always`)
* Multiline trailing commas: required for arrays/hashes (`Style/TrailingCommaInArrayLiteral` / `Style/TrailingCommaInHashLiteral`)
* Line length: not enforced (`Layout/LineLength: Enabled: false`)

### Metrics policy

Most “your method is too long/complex” cops are disabled (AbcSize, CyclomaticComplexity, MethodLength, ClassLength, etc.). The goal is to focus on correctness and maintainability signals, not force micro-method theater.

## Contributing

These styles are not an invitation to bikeshed preferences. If you disagree with some rules, override them in your own application. If you disagree with most of them, you should probably publish your own config instead.

Contributions are welcome for bugs, obvious inconsistencies, or improvements that still fit the spirit of this collection: consistent defaults, minimal noise, and a bias toward catching real issues.

## License

This gem is released under the [MIT License](https://opensource.org/license/mit/).

