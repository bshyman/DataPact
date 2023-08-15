require_relative "lib/data_pact/version"

Gem::Specification.new do |spec|
  spec.name = "data_pact"
  spec.version = DataPact::VERSION
  spec.authors = ["Benjamin Shyman"]
  spec.email = ["bshyman@gmail.com"]
  spec.homepage = "https://github.com/bshyman/DataPact"
  spec.summary = "Debugging tool for Ruby on Rails."
  spec.description = "Various debugging tools for Ruby on Rails"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/bshyman/DataPact/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_runtime_dependency 'rails', '~> 6.1', '>= 6.1.7.1'
end
