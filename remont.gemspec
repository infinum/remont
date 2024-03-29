require_relative 'lib/remont/version'

Gem::Specification.new do |spec|
  spec.name          = 'remont'
  spec.version       = Remont::VERSION
  spec.authors       = ['Rails Team']
  spec.email         = ['team.rails@infinum.com']

  spec.summary       = 'DSL for row level data processing.'
  spec.homepage      = 'https://github.com/infinum/remont'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop-infinum'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'timecop'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
