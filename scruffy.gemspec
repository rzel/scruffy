lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'scruffy/version'

Gem::Specification.new do |s|
  s.name = "scruffy"
  s.version = Scruffy::VERSION

  s.authors = ["brasten", "Jeremy Green", "samhendley", "delano", "willbryant", "tlconner", "Jonas Nicklas"]
  s.email = ["brasten@nagilum.com", "david.parry@suranyami.com", "jonas.nicklas@gmail.com"]
  s.description = "Scruffy is a library for outputting graphs to image or SVG"

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.txt History.txt)
  s.extra_rdoc_files = ["README.rdoc"]

  s.homepage = "http://github.com/brasten/scruffy"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.6"
  s.summary = "Scruffy is a library for outputting graphs to image or SVG"

  s.add_dependency 'builder', '~> 2.0'
#  s.add_dependency 'rmagick', '~> 2.0'
  s.add_development_dependency 'rspec', '~> 1.1'

end
