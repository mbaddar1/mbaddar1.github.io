# mbaddar1.github.io

My personal site: notes, experiments, and things I'm learning in AI and machine learning.
Live at https://mbaddar1.github.io. It's built with [Jekyll](https://jekyllrb.com/) and the
[Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme, and GitHub Pages
rebuilds it automatically whenever something is pushed to `main`.

## Writing

- **Drafts** go in `_drafts/` with no date in the file name, e.g. `_drafts/my-idea.md`.
  They are not published.
- **Publishing** means moving a draft into `_posts/` with a date prefix, for example
  `_posts/2026-11-22-my-idea.md`, then pushing to `main`.
- Every post starts with front matter:

  ```yaml
  ---
  title: "My Idea"
  categories:
    - RAG
  tags:
    - retrieval
  ---
  ```

## Preview locally (Ubuntu)

One-time setup. This installs Ruby with apt (it asks for your sudo password) and puts the
site's gems in `vendor/bundle`:

```bash
./scripts/setup-ubuntu.sh
```

Then, whenever you want to preview the site:

```bash
bundle exec jekyll serve --drafts --livereload
```

Open http://localhost:4000. Drafts appear because of `--drafts`, and the page reloads
when you save a file. Changes to `_config.yml` need a server restart.

## Layout

| Path | What it is |
| --- | --- |
| `_config.yml` | Site settings: title, author, sidebar, theme |
| `index.md` | Home page (latest posts) |
| `_pages/` | About, archive pages, 404 |
| `_data/navigation.yml` | Top menu |
| `_posts/` | Published posts |
| `_drafts/` | Unpublished notes |
| `assets/images/` | Images |
