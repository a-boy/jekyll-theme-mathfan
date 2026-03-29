# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-mathfan"
  spec.version       = "0.1.0"
  spec.authors       = ["a-boy"]
  spec.email         = ["avvboy@gmail.com"]

  spec.summary       = "A Jekyll theme for mathematics blogs with MathJax/KaTeX, SageCell, Mermaid, and GeoGebra support."
  spec.homepage      = "https://github.com/a-boy/jekyll-theme-mathfan"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) || f.include?("_posts") || f.include?("index.md") || f.include?("about.md") || f.include?("archive.md") || f.include?("tags.md") || f.include?("404.html") }

  spec.add_runtime_dependency "jekyll", "~> 4.4"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
end
