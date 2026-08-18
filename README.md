# lucilefavero.github.io

My academic website. Built with [Jekyll](https://jekyllrb.com), published
automatically by GitHub Pages: **pushing to `main` is publishing**. No build
step, no Actions, no JavaScript.

## Preview locally

```
./serve.sh
```

Then open <http://localhost:4000>. The first run installs dependencies and
takes a few minutes; after that it starts in seconds. Stop it with `Ctrl-C`.

(Requires Homebrew's `ruby@3.4`, already installed on this machine:
`brew install ruby@3.4` if ever needed again.)

## How to update the site

**All content lives in `_data/*.yml`. You never touch HTML to add content.**
Lists are sorted by date automatically; add entries anywhere in the file,
order doesn't matter. After editing, commit and push; the site updates in
about a minute.

### Add a paper

Open `_data/publications.yml`, copy this block, edit it:

```yaml
- id: myshortname2027
  type: peer          # peer | preprint
  date: 2027-06-15    # used for sorting and the displayed year
  authors: "Favero, L., Pérez-Ortiz, J. A., Käser, T., & Oliver, N."
  title: "The Title of the Paper"
  venue: "Name of the Conference or Journal, City, Country"
  url: https://arxiv.org/abs/XXXX.XXXXX     # what the title links to (optional)
  links:                                     # little link buttons (optional)
    - label: arXiv
      url: https://arxiv.org/abs/XXXX.XXXXX
    - label: PDF
      url: https://example.org/paper.pdf
```

Optional extras: `award: "..."` (shown in the accent purple with a star),
`note: "..."` (shown after the venue), `display: "2027"` (overrides the
displayed date). It appears on the Publications page automatically.

### Add a news item

Open `_data/news.yml`:

```yaml
- date: 2027-06-15
  text: "Presented X at Y, City."
  link: https://example.org          # optional
  link_label: Slides                 # optional, defaults to "Link"
```

The five most recent items show on the home page automatically; everything
shows on the News page grouped by year. If the exact day is unknown, keep an
approximate `date:` (it only controls ordering) and add
`display: "Jun 2027"` with what should actually be shown.

### Add a talk

Open `_data/talks.yml`:

```yaml
- date: 2027-06-15
  title: "Title of the Talk"
  event: "Name of the Seminar or Workshop"
  location: "City, Country"
  note: "Invited seminar"            # optional, shown in bold
  link: https://example.org          # optional
  link_label: Slides                 # optional
```

### Add outreach or media

Open `_data/outreach.yml`:

```yaml
- date: 2027-06-15
  type: engagement                   # engagement (talks, panels) | media (TV, radio, press)
  text: "Panelist, “Event name”, Organizer, City, Country"
  link: https://example.org          # optional
  link_label: Press                  # optional
```

If it's also news-worthy, add a separate entry in `news.yml`; the two lists
are independent.

### Add a poster

Open `_data/posters.yml`: same fields as a paper (no `type:`). Posters from
2024 on are always visible; older ones fold into the collapsed section
automatically.

### Update the CV

1. Export the new PDF and save it as
   `assets/cv/Lucile_Favero_CV_2027-03.pdf` (year–month in the name, so a
   stale link is always visible).
2. In `_config.yml`, update the two lines:
   ```yaml
   cv_path: /assets/cv/Lucile_Favero_CV_2027-03.pdf
   cv_updated: "March 2027"
   ```
3. Delete the old PDF (`git rm assets/cv/Lucile_Favero_CV_2026-08.pdf`).

### Change contact details or profile links

Everything in the footer comes from `_config.yml` (`email:` and the
`profiles:` block).

## Where things live

| Path | What it is |
|---|---|
| `_data/*.yml` | **All content**: the only files you normally edit |
| `_config.yml` | Site title, email, CV path, profile links |
| `index.html`, `research.md`, `publications.html`, `talks.html`, `news.html` | The five pages (layout, not content) |
| `_layouts/default.html` | Shared frame: header, nav, banner, footer |
| `_includes/` | Small templates (publication entry, news item, JSON-LD) |
| `assets/css/main.css` | All styling. Colors and fonts are defined once at the top |
| `assets/fonts/` | Self-hosted Roboto + Merriweather (nothing loads from Google) |
| `TODO.md` | Open items that need a human decision |

## Sanity rules

- Never invent a URL, DOI, or date; if unsure, leave the field out and add a
  line to `TODO.md`.
- The project is spelled **MAIKE**, always.
- Test a new link before committing it (`curl -IL <url>` or just open it).
