require_relative "lib/data_pact/version"

Gem::Specification.new do |spec|
  spec.name        = "data_pact"
  spec.version     = DataPact::VERSION
  spec.authors     = ["Benjamin Shyman"]
  spec.email       = ["bshyman@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Data contracts between front and back end software development teams."
  # spec.description = "TODO: Description of DataPact."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.1.7.1"
end
