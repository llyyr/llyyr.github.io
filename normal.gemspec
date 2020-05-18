# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "normal"
  s.version       = "0.1"
  s.authors       = ["llyyr"]
  s.email         = ["thighsaspillows+blog@gmail.com"]
  s.summary       = "jekyll theme for my blog"
  s.homepage      = "https://llyyr.github.io"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end
  
  s.add_runtime_dependency "jekyll"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
end
