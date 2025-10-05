name: Build & Deploy (Jekyll → GitHub Pages)

on:
  push:
    branches: [ "main" ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: true

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Ruby
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: '3.1'           # match your local Ruby
          bundler-cache: true

      - name: Install dependencies
        run: bundle install --path vendor/bundle

      - name: Build site
        run: bundle exec jekyll build --trace

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: _site

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Configure Pages
        uses: actions/configure-pages@v5
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
