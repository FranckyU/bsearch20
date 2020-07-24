require_relative 'lib/bsearch20/version'

Gem::Specification.new do |spec|
  spec.name          = "bsearch20"
  spec.version       = Bsearch20::VERSION
  spec.authors       = ["Satoru Takabayashi, Andy Kifer"]
  spec.email         = ["kifer.mada@gmail.com"]

  spec.summary       = %q{Ruby/Bsearch: a binary search library for Ruby}
  spec.description   = %q{This is an upgraded version of the excelent bsearch gem by Satoru Takabayashi. Tailored for Ruby 2.7+ mostly syntax changes.}
  spec.homepage      = "https://github.com/FranckyU/bsearch20"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  # spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/FranckyU/bsearch20"
  spec.metadata["changelog_uri"] = "https://github.com/FranckyU/bsearch20/blob/master/Changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
