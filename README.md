# Homebrew tap for MDViewer

[MDViewer](https://github.com/mmmikael/mdviewer) is a fast, native Markdown viewer for macOS, with live reload, Quick Look previews, Mermaid diagrams, math and AI summaries.

## Install

```bash
brew install --cask mmmikael/tap/mdviewer
```

Updates come with `brew upgrade`. To remove it, `brew uninstall --cask mdviewer` (add `--zap` to also remove its settings and saved summaries).

The app is signed and notarised by Apple. Homebrew installs the Apple silicon or Intel build to match your Mac (macOS 13 or later).

## Maintenance

The `brew bump` workflow checks for new MDViewer releases every day and opens a pull request that updates the cask's version and checksums.
