# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sortme/version"

Gem::Specification.new do |spec|
  spec.name          = "sortme"
  spec.version       = Sortme::VERSION
  spec.authors       = ["Olumuyiwa Osiname"]
  spec.email         = ["olumuyiwa.osiname@andela.com"]

  spec.summary       = ["This gem installs sortme on your local machine"]
  spec.description   = ["Sortme is a script that helps move your media files from a folder into your library media folders"]
  spec.homepage      = "https://github.com/andela-oosiname/sortme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["sortme"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
