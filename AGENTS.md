# AGENTS.md

Agentic coding guidelines for the jekyll-theme-mathfan project.

## Project Overview

This is a Jekyll theme gem project for mathematics blogs. It supports math rendering (MathJax/KaTeX), interactive math tools (SageCell), diagrams (Mermaid), and geometry tools (GeoGebra).

## Build Commands

```bash
# Install dependencies
bundle install

# Serve locally (development)
bundle exec jekyll serve

# Build for production
bundle exec jekyll build

# Clean build artifacts
bundle exec jekyll clean
```

### Testing Single Features

The theme can be tested by creating a test site:

```bash
# Create a temporary test directory
mkdir -p /tmp/jekyll-test && cd /tmp/jekyll-test

# Initialize a new Jekyll site
jekyll new . --force

# Add theme to Gemfile
echo 'gem "jekyll-theme-mathfan", path: "/path/to/jekyll-theme-mathfan"' >> Gemfile
echo 'theme: jekyll-theme-mathfan' >> _config.yml

# Install and serve
bundle install && bundle exec jekyll serve
```

## Code Style Guidelines

### General

- Use 2-space indentation for all files
- Remove trailing whitespace
- Use Unix line endings (LF)
- No emoji in code or documentation

### Ruby (.rb files)

- Follow [Ruby Style Guide](https://rubystyle.guide/)
- Use frozen string literals: `# frozen_string_literal: true`
- Use double quotes for strings unless single quotes are needed
- Use snake_case for variable and method names
- Use SCREAMING_SNAKE_CASE for constants
- Use 2-space indentation
- Maximum line length: 120 characters
- Use `unless` instead of `!` for simple negations
- Prefer `collect`, `detect`, `inject` over `map`, `find`, `reduce`

Example:
```ruby
# frozen_string_literal: true

module Jekyll
  class ThemeMathfan < Jekyll::Theme
    ASSETS_PATH = "_assets".freeze

    def initialize(name)
      super
      @config = load_config
    end

    private

    def load_config
      YAML.safe_load(File.read("_config.yml"))
    end
  end
end
```

### Liquid Templates (.html files)

- Use 2-space indentation
- Use descriptive variable names
- Prefer `{%- elsif -%}` over nested `{%- if -%}` statements
- Use `capture` for complex variable assignments
- Comment syntax: `{%- # liquid comment -%}` or `{%- comment -%}...{%- endcomment -%}`

Example:
```liquid
{%- comment -%}
  Page layout wrapper
{%- endcomment -%}
{%- if page.title -%}
  <h1>{{ page.title | escape }}</h1>
{%- endif -%}

{{ content }}
```

### SCSS (.scss files)

- Use 2-space indentation
- Use hyphens for class names (kebab-case)
- Nest selectors maximum 3 levels deep
- Use variables for colors, spacing, fonts
- Group related properties together
- Use placeholder selectors (%) for shared styles

Example:
```scss
$spacing-unit: 8px;
$primary-color: #3498db;

.site-header {
  padding: $spacing-unit * 2;
  border-bottom: 1px solid rgba($primary-color, 0.2);

  &__title {
    font-size: 1.5rem;
    color: $primary-color;
  }
}

%button-base {
  padding: $spacing-unit $spacing-unit * 2;
  border-radius: 4px;
  cursor: pointer;
}
```

### HTML Structure

- Use semantic HTML5 elements
- Include proper `lang` attribute
- Use `aria-*` attributes for accessibility
- Keep closing tags on their own line for multi-line elements

### YAML Front Matter

- Use 2-space indentation
- Use lowercase for keys
- Use consistent quoting (prefer double quotes)
- Sort keys alphabetically within sections

Example:
```yaml
---
title: "Post Title"
date: 2024-01-15
categories:
  - Mathematics
  - Algebra
tags:
  - equations
  - linear-algebra
features:
  - katex
  - mermaid
---
```

### File Organization

```
_includes/       # Reusable HTML components
_layouts/        # Page templates
assets/css/      # SCSS entry point (main.scss)
_data/           # YAML data files
```

Note: All SCSS is in a single file `assets/css/main.scss` to avoid import path issues with Jekyll's sass converter.

### Naming Conventions

| Type | Convention | Example |
|------|------------|---------|
| Layouts | lowercase | `post.html`, `page.html` |
| Includes | lowercase with hyphens | `mathjax.html`, `katex.html` |
| SCSS variables | kebab-case | `$color-primary`, `$space-md` |
| SCSS classes | BEM | `.site-header__logo` |
| Data files | lowercase | `navigation.yml` |

### Git Workflow

- Commit message format: `<type>(<scope>): <description>`
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
- Keep commits atomic (one feature/fix per commit)
- Reference issues in commit messages when applicable

Example:
```
feat(includes): add KaTeX support for math rendering

Adds katex.html include with auto-detection of math expressions.
Supports inline and display math modes.
Closes #12
```

## Front Matter Features

The theme supports these features via page front matter:

```yaml
features:
  - mathjax     # MathJax rendering (mutually exclusive with katex)
  - katex       # KaTeX rendering (mutually exclusive with mathjax)
  - sagecell    # SageMath interactive cells
  - mermaid     # Diagram rendering
  - geogebra    # Interactive geometry
```

## Dependencies

- Jekyll ~> 4.4
- See Gemfile and gemspec for full dependency list

## Editor Configuration

The project includes `.editorconfig` support. Configure your editor to:
- Use 2 spaces for indentation
- Trim trailing whitespace
- Use UTF-8 encoding
- Use LF line endings
