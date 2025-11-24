# ChevTech Privacy Policies

Static site hosting privacy policies for ChevTech applications.

## Apps

- **XShooter** - Shooting performance tracking app
- **Trackoponic** - Plant tracking app

## Usage

### Local Preview

```bash
just preview
```

Opens at http://localhost:1313

### Deploy

```bash
just deploy "Update XShooter policy"
```

Commits, pushes, and GitHub Actions deploys to Pages.

## Adding a New App

1. Create `content/<appname>/privacy.md`
2. Add front matter:

```yaml
---
title: "AppName Privacy Policy"
app_name: "AppName"
effective_date: "2024-11-24"
custom_content: false
---
```

3. Set `custom_content: true` and add markdown content for custom policies

## Structure

- `content/` - App privacy policy pages
- `layouts/partials/privacy-base.html` - Base privacy policy template
- `static/css/style.css` - Styling
- `config.toml` - Site configuration

## Requirements

- [Hugo](https://gohugo.io/installation/)
- [just](https://github.com/casey/just)
