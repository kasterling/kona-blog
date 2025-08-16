# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal travel blog built with Hugo static site generator, specifically designed for documenting a trip to Kona, Hawaii. The blog uses the Ananke theme and is deployed automatically to GitHub Pages via GitHub Actions.

## Key Development Commands

### Blog Management
- **Start development server**: `hugo server` (serves at http://localhost:1313)
- **Create new post**: `hugo new posts/day-X-title.md`
- **Build site**: `hugo --gc --minify`

### Simplified Posting Workflow
- **Quick post creation**: `./new-post.sh "post-title"`
- **Quick publish**: `./publish.sh "commit message"`

### Deployment
- **Manual deployment**: `git add . && git commit -m "message" && git push`
- **Automatic deployment**: Triggered on every push to main branch via GitHub Actions

## Architecture & Content Strategy

### Content Workflow
This blog is designed around a specific mobile-first workflow:
1. Content creation on iPhone (photos + Superwisper voice recordings)
2. Content transfer and transcription
3. Hugo post creation with Markdown
4. Git-based publishing to GitHub Pages

### Directory Structure
- `content/posts/` - Blog post markdown files
- `static/images/` - Photos and media assets (keep under 1MB per image)
- `hugo.toml` - Site configuration
- `archetypes/default.md` - Post template
- `.github/workflows/hugo.yml` - GitHub Actions deployment

### Theme Configuration
- Uses Ananke theme via git submodule
- Author field simplified to string format for theme compatibility
- baseURL configured for GitHub Pages: `https://kasterling.github.io/kona-blog/`
- Unsafe HTML rendering enabled for embedded maps/media

### Content Guidelines
- Posts use Hawaiian timezone: `-10:00`
- Images should be web-optimized (< 1MB) before adding
- Use descriptive filenames: `day-2-snorkeling.jpg` not `IMG_1234.jpg`
- Standard tags: `["kona", "hawaii", "travel", "day-X"]`

### Deployment Architecture
- GitHub Actions workflow builds and deploys on every push to main
- Uses Hugo v0.128.0 with extended features
- Automated minification and garbage collection
- GitHub Pages serves the built site from public/ directory

## Important Files

### User Documentation
- `WORKFLOW.md` - Detailed technical workflow documentation
- `EASY-POSTING-GUIDE.md` - Beginner-friendly posting instructions
- `new-post.sh` / `publish.sh` - Helper scripts for simplified posting

### Configuration
- `hugo.toml` - Main site configuration
- `.github/workflows/hugo.yml` - Deployment pipeline
- `themes/ananke/` - Theme files (git submodule)

## Development Notes

### Local Development
- Always preview posts with `hugo server` before publishing
- Server auto-reloads on file changes
- Access at http://localhost:1313 (not /kona-blog/ path in local dev)

### Publishing Process
- Changes to main branch trigger automatic deployment
- Build takes 2-3 minutes to appear live
- Failed builds prevent deployment (check GitHub Actions tab)

### Content Management
- Posts are in Markdown format with YAML frontmatter
- Draft posts won't appear on live site unless draft: false
- Date format must include timezone for proper sorting

This repository prioritizes simplicity and ease of use for non-technical travel blogging over complex features.