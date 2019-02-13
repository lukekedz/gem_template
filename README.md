# generic template for Ruby gems

## Helpful Websites
https://guides.rubygems.org/make-your-own-gem/
https://bundler.io/v1.13/guides/creating_gem

## Installation
Add this line to your application's Gemfile and `bundle install`

```ruby
gem 'gem_template', :git => 'http://...'
```

### Experiment in LOCAL Ruby environment
1. `bundle install`
2. `ruby bin/console`

### Helpful Commands
1. `bundle exec rspec` or `bundle exec rspec ./spec/*specific_file_spec.rb*`
2. `bundle exec rubocop`
3. docker 
  a. `docker build -t gem_template .`
  b. `docker images gem_template`
  c. `docker run --rm --name gem_template -it gem_template rspec`
  d. `docker run --rm --name gem_template -it gem_template rubocop`

### Versioning & Release(s)
1. see & update CHANGELOG
2. update ./lib/gem_template/version.rb
3. use `git tag` and `git push origin --tags`
