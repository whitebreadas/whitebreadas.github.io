# CLAUDE.md — whitebreadas.github.io

## What this is

Minimal Quarto website for White Bread AS. Single landing page showing the logo, nothing else. Deployed to GitHub Pages from the `docs/` folder on `main`.

## Project structure

- `_quarto.yml` — Quarto config (outputs to `docs/`, no navbar, flatly theme)
- `index.qmd` — Landing page (logo only, hidden link to www.rwhite.no)
- `styles.css` — Hides all Quarto chrome, centers logo, disables scrolling
- `black.png` / `brown.png` — Logo variants
- `deploy.sh` — Renders, commits `docs/`, and pushes to main
- `docs/` — Rendered output (served by GitHub Pages, do not edit by hand)

## Deployment

Run `./deploy.sh` from the repo root. Or manually:
```
quarto render .
git add docs && git commit -m "docs commit"
git push origin main:main
```

## Key decisions

- **No scrolling**: The page is fully locked (`position: fixed`, `overflow: hidden`, `overscroll-behavior: none` on html/body and all Quarto wrapper divs). This was needed for Safari compatibility — `overflow: hidden` alone is not enough.
- **Hidden link**: The logo links to www.rwhite.no but has no visible link styling (`cursor: default`, no underline).
- **No navbar/footer/title**: All Quarto chrome is hidden via CSS.

## Rules

- After any content or style change, always render and verify the `docs/` output before committing.
- Do not add a navbar, footer, or title block — this is intentionally a logo-only page.
- Test in both Chrome and Safari after CSS changes (Safari handles overflow differently).
