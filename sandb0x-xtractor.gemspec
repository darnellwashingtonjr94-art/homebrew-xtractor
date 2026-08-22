# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sandb0x_xtractor/version"

Gem::Specification.new do |spec|
  spec.name          = "sandb0x-xtractor"
  spec.version       = Sandb0xXtractor::VERSION
  spec.authors       = ["Darion Kellar"]
  spec.email         = ["credkellar@gmail.com"]

  spec.summary       = "A security and extraction tool framework."
  spec.description   = "A utility framework designed for managing and parsing sandbox extraction routines."
  spec.homepage      = "https://github.com/darnellwashingtonjr94-art/homebrew-xtractor"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # Specify which files should be added to the gem when it is released
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:test|spec|features|\\.git|\.github)/?\z})
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
