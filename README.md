# https://dmp100.github.io/

Execute
```
bundle exec jekyll serve
```

---
# Personal Portfolio & Blog

Modern, minimal portfolio website built with Jekyll and GitHub Pages. Features a clean design with project showcases, blog posts, and responsive layout.

## 🌟 Features

- **Modern Design**: Clean, minimal interface inspired by Marc Lou's style
- **Project Showcase**: Dynamic project cards with status tracking
- **Blog Integration**: Category-based blog posts with project linking
- **YouTube Integration**: Embedded demo videos in project pages
- **Responsive Design**: Mobile-first approach for all devices
- **GitHub Pages Ready**: Automatic deployment with GitHub Actions

## 🏗️ Project Structure

```
├── _layouts/           # Page templates
│   ├── default.html    # Base layout
│   ├── post.html       # Blog post layout
│   └── project.html    # Project detail layout
├── _posts/            # Blog posts (YYYY-MM-DD-title.md)
├── projects/          # Project pages
├── assets/
│   ├── css/           # Stylesheets
│   └── images/        # Images and screenshots
├── _config.yml        # Jekyll configuration
└── README.md         # This file
```

## 🚀 Quick Start

### 1. Clone and Setup
```bash
git clone https://github.com/dmp100/dmp100.github.io.git
cd dmp100.github.io
bundle install
bundle exec jekyll serve
```

### 2. Local Development
- Visit `http://localhost:4000`
- Changes auto-reload during development
- Test before pushing to GitHub

### 3. GitHub Pages Deployment
```bash
git add .
git commit -m "Update content"
git push origin main
```

Site automatically deploys to `https://username.github.io` within 5-10 minutes.

## 📝 Content Management

### Adding New Projects

Create a new file in `projects/` folder:

```yaml
---
layout: project
title: "Project Name"
description: "Short project description"
status: "In Development"  # MVP, In Development, Released
category: "Web Application"
emoji: "🚀"  # or icon_image: "/path/to/icon.png"
project_id: "unique-project-id"
order: 1
demo_url: "https://demo-link.com"
github_url: "https://github.com/user/repo"
screenshots:
  - image: "/assets/images/projects/project-name/screenshot1.png"
    title: "Main Dashboard"
    description: "Project overview interface"
  - youtube: "VIDEO_ID"
    title: "Live Demo"
    description: "Complete feature walkthrough"
    type: "video"
  - image: "/assets/images/projects/project-name/mobile.png"
    title: "Mobile View"
    description: "Responsive mobile design"
    type: "mobile"
---

# Project Details

Add detailed project description here using Markdown.
```

### Adding Blog Posts

Create files in `_posts/` with format `YYYY-MM-DD-title.md`:

```yaml
---
layout: post
title: "Post Title"
date: 2025-07-20
category: "Notes"  # Notes, Project, Android, Research
project: "project-id"  # Links to specific project (optional)
---

# Post Content

Write your blog post content here using Markdown.
```

### Adding Images and Screenshots

```bash
# Project screenshots
/assets/images/projects/project-name/
├── screenshot1.png
├── demo.gif
└── mobile-view.png

# Blog post images
/assets/images/posts/
└── post-image.png
```

## 🎨 Customization

### Site Configuration

Edit `_config.yml`:

```yaml
title: "Your Name"
description: "Your description"
url: "https://username.github.io"
author:
  name: "Your Name"
  email: "your.email@domain.com"
  github: "username"
  linkedin: "username"
  twitter: "username"
```

### Styling

- Main styles: `assets/css/main.scss`
- Layout templates: `_layouts/`
- Color scheme: Gradient backgrounds with clean typography

### Navigation

Update navigation in `_layouts/default.html`:

```html
<nav>
  <a href="/">Home</a>
  <a href="/about/">About</a>
  <a href="/all-projects/">Projects</a>
  <a href="/posts/">Blog</a>
</nav>
```

## 📱 Page Types

### Home Page (`index.md`)
- Featured projects with status badges
- Recent blog posts
- Hero section with introduction

### About Page (`about.md`)
- Personal introduction
- Philosophy and background
- Contact information and social links

### All Projects (`all-projects.md`)
- Complete project overview
- Category filtering
- Project status tracking

### Project Detail Pages
- Hero section with large icon
- YouTube demo videos
- Screenshot galleries
- Development journey (linked blog posts)

### Blog Posts
- Category-based organization
- Project linking
- Responsive typography

## 🎥 YouTube Integration

Add demo videos to projects:

1. Upload video to YouTube
2. Extract Video ID from URL: `https://youtube.com/watch?v=VIDEO_ID`
3. Add to project frontmatter:

```yaml
screenshots:
  - youtube: "VIDEO_ID"
    title: "Demo Title"
    description: "Demo description"
    type: "video"
```

Videos automatically embed with responsive 16:9 aspect ratio.

## 📊 Project Status System

Three status levels for projects:

- **MVP**: Early stage, basic functionality
- **In Development**: Active development, core features
- **Released**: Production ready, publicly available

Status automatically displays on project cards and detail pages.

## 🔧 Development Guide

### Local Development Commands

```bash
# Install dependencies
bundle install

# Serve locally with auto-reload
bundle exec jekyll serve

# Build for production
bundle exec jekyll build

# Clean build files
bundle exec jekyll clean
```

### Adding New Features

1. **New Layout**: Create in `_layouts/`
2. **New Style**: Add to `assets/css/main.scss`
3. **New Page**: Create `.md` file with appropriate frontmatter
4. **New Collection**: Add to `_config.yml` and create folder

### CSS Architecture

```scss
// Global styles
* { box-sizing: border-box; }

// Component styles
.project-card { /* Project card styles */ }
.hero-section { /* Hero section styles */ }
.screenshot-gallery { /* Gallery styles */ }

// Responsive design
@media (max-width: 768px) { /* Mobile styles */ }
```

## 🚀 Deployment

### GitHub Pages (Automatic)

1. Push to `main` branch
2. GitHub Actions builds site automatically
3. Deploys to `https://username.github.io`
4. Check Actions tab for build status

### Manual Deployment

```bash
# Build site
bundle exec jekyll build

# Deploy _site folder to hosting provider
```

## 🔍 SEO & Performance

### Built-in Optimizations

- Jekyll SEO Tag plugin
- Responsive images
- Optimized CSS
- Fast loading times
- Mobile-first design

### Adding Meta Tags

```yaml
---
title: "Page Title"
description: "Page description for SEO"
image: "/assets/images/page-image.png"
---
```

## 📚 Resources

### Jekyll Documentation
- [Jekyll Official Docs](https://jekyllrb.com/docs/)
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Liquid Template Language](https://shopify.github.io/liquid/)

### Design Inspiration
- Marc Lou's minimal design approach
- Modern SaaS landing pages
- Clean typography and spacing

### Tools Used
- Jekyll 3.9+
- GitHub Pages
- Liquid templating
- SCSS styling
- GitHub Actions

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/new-feature`)
3. Commit changes (`git commit -m 'Add new feature'`)
4. Push to branch (`git push origin feature/new-feature`)
5. Open Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 💬 Support

For questions or issues:
- Open an issue on GitHub
- Check existing documentation
- Review Jekyll and GitHub Pages docs

---

Built with ❤️ using Jekyll and GitHub Pages