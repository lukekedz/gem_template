lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_template/version'

Gem::Specification.new do |spec|
  spec.name          = 'gem_template'
  spec.version       = GemTemplate::VERSION
  spec.authors       = ['Luke Kedziora']
  spec.email         = ['lukekedziora@gmail.com']

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = ''

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = '' if spec.respond_to?(:metadata)

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler', '~> 1.16'
  spec.add_dependency 'dotenv'
  spec.add_dependency 'git'
  spec.add_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
