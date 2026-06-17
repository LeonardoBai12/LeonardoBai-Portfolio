# Leonardo Bai — Portfolio

Personal portfolio site built with Jekyll, hosted on GitHub Pages at **[leonardobai12.github.io](https://leonardobai12.github.io)**.

## Stack

- [Jekyll](https://jekyllrb.com/) 4.3 — static site generator
- Plain CSS (no framework) — dark dev-portfolio theme
- GitHub Actions — deploy to Pages + daily Medium article sync

## Structure

```
_config.yml          # Site settings, author info, social links
index.html           # Main page (Hero, About, Experience, Education, Projects, Writing, Contact)
_projects/           # One .md per project — rendered as individual detail pages
_layouts/            # default.html, project.html
_includes/           # header.html, footer.html
_data/
  medium_posts.yml   # Auto-synced from Medium RSS (do not edit manually)
assets/
  css/main.css
  images/
  files/             # Resume PDF
scripts/
  fetch_medium.py    # Local script to sync Medium articles
.github/workflows/
  jekyll.yml         # Deploy to GitHub Pages on push to main
  medium-sync.yml    # Daily Medium RSS sync
```

## Local Development

Requires Ruby (uses system Ruby on macOS — same version as the existing `vendor/bundle`).

```bash
# Install dependencies (first time only)
/Users/leonardobai/.gem/ruby/2.6.0/bin/bundle install

# Serve locally at http://localhost:4000
make serve

# Build only
make build

# Sync Medium articles manually
make articles
```

## Adding a Project

Create a new file in `_projects/`:

```yaml
---
title: My Project
slug: my-project
order: 5                  # controls card order on the homepage
description: "One paragraph shown on the project card."
stack:
  - Kotlin
  - Ktor
stack_logos:
  - kotlin                # adds Kotlin logo badge (use "flutter" for Flutter)
repo_url: https://github.com/LeonardoBai12/my-project
demo_url: https://example.com
demo_label: Live Demo
image: /assets/images/my-project.png
card_bg: "#0d1117"        # optional: custom card background color
---

Full project description in Markdown goes here.
```

## Medium Sync

Articles are fetched from `https://medium.com/feed/@leonardobbai` and written to `_data/medium_posts.yml`.

- **Locally:** `make articles`
- **CI:** runs daily at 06:00 UTC via `.github/workflows/medium-sync.yml`, commits only if there's a diff

## Deploying

Push to `main` — the `jekyll.yml` workflow builds and deploys to GitHub Pages automatically.

> Before the first deploy: go to **Settings → Pages → Source** and set it to **GitHub Actions**.
