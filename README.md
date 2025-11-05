# low

![Screenshot](./docs/ss.png)

> A minimal, retro-inspired Jekyll theme for engineers who care about the metal.

**low** is a lightweight Jekyll theme designed for technical blogging — inspired by [Fabien Sanglard's website](https://fabiensanglard.net/).  
It's meant for developers who write about *low-level programming, graphics, operating systems, emulation, and the craft of software*.

No JavaScript frameworks. No build pipelines. Just clean HTML, monospace typography, and focus on content.

---

## ✳ Features

- ⚙️ **Zero-dependency design** — pure HTML + CSS, no JavaScript
- 💾 **Retro technical aesthetic** — monospaced typography and print-like layout
- 🧱 **Simple structure** — easily fork, modify, or embed in existing Jekyll setups
- 📰 **RSS + SEO ready** — via `jekyll-feed`, `jekyll-seo-tag`, and `jekyll-sitemap`
- 🗓️ **Archive view** — grouped by year, auto-generated from posts
- 🖋️ **Clean code blocks** — styled for low-level and C-style syntax
- 🪶 **Compact footer** — © year + author, nothing more

---

## ⚡ Installation

### Option 1: Add to Existing Site

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-low"
```

And add this line to your `_config.yml`:

```yaml
theme: jekyll-theme-low
```

Then execute:

```bash
bundle install
```

### Option 2: Create New Site

```bash
jekyll new my-blog
cd my-blog
```

Edit `Gemfile` and add:

```ruby
gem "jekyll-theme-low"
```

Edit `_config.yml` and add:

```yaml
theme: jekyll-theme-low
```

Then run:

```bash
bundle install
bundle exec jekyll serve
```

---

## 🧩 Directory Structure

```
low/
├── _layouts/
│   ├── default.html      # Base layout (includes header/footer)
│   ├── home.html         # Main index page
│   ├── post.html         # Individual post layout
│   └── archive.html      # Yearly archive page
│
├── _includes/
│   ├── head.html         # Metadata + styles
│   ├── header.html       # Top navigation bar
│   ├── footer.html       # Minimal one-liner footer
│   ├── post-list.html    # Reusable post index
│   └── post-meta.html    # Date + tags for posts
│
├── assets/
│   └── css/
│       └── main.scss     # Global theme styles
│
├── _sass/
│   └── theme/
│       └── _syntax.scss  # Rouge syntax highlighting
│
└── low.gemspec           # Jekyll theme definition
```

---

## 🧭 Example Site

The theme ships with an `example/` directory that demonstrates:

- Index page listing posts under "Articles"
- `/archive/` for yearly grouping
- `/rss.xml` for feed readers

Run it locally:

```bash
cd example
bundle install
bundle exec jekyll serve
```

Then open: http://127.0.0.1:4000

---

## 🎨 Customization

### Basic Configuration

Edit your `_config.yml`:

```yaml
title: Your Site Title
author: Your Name
description: A technical blog about low-level programming
url: "https://yourdomain.com"

# Plugins
plugins:
  - jekyll-feed
  - jekyll-seo-tag
  - jekyll-sitemap
```

### Creating Posts

Create a file in `_posts/` directory:

```markdown
---
layout: post
title: "My First Post"
date: 2025-11-05
categories: programming
---

Your content here...
```

### Adding Pages

Create pages in the root directory:

```markdown
---
layout: default
title: About
permalink: /about/
---

About me...
```

---

## 🧠 Philosophy

This theme follows the same principles as the projects it's meant to host:

- Understand what runs under the hood
- Respect simplicity
- Prefer text over tools

It's ideal for developers writing deep dives into:

- Retro-game rendering
- CPU emulation
- Assembly or C programming
- Framebuffer graphics
- OS development logs

---

## 🪞 Credit

Heavily inspired by the aesthetic and minimalism of [Fabien Sanglard](https://fabiensanglard.net/).

---

## 📄 License

The theme is available as open source under the terms of the [MIT License](LICENSE).

---

## 🤝 Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[username]/jekyll-theme-low

---

## 📮 Support

If you encounter any issues or have questions:

1. Check the [example site](./example/) for reference
2. Open an issue on GitHub
3. Read the [Jekyll documentation](https://jekyllrb.com/docs/)

---

**Made with ❤️ for the low-level community**
