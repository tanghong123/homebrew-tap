# homebrew-tap

Personal Homebrew tap.

```bash
brew tap tanghong123/tap
```

## Casks

- **crux** — on-device meeting transcription & summarization for macOS.
  Records, transcribes (WhisperKit), diarizes speakers, dedups slides, and
  summarizes meetings — processing on device by default, with optional cloud
  routing for the LLM stages. Notarized; requires macOS Sonoma or newer.
  ```bash
  brew install --cask tanghong123/tap/crux
  ```
- **[kwire](https://github.com/tanghong123/kwire)** — desktop app for
  downloading whole reading lists, and entire [Open Library](https://openlibrary.org)
  series, from Library Genesis. Signed & notarized universal macOS build.
  ```bash
  brew install --cask tanghong123/tap/kwire
  ```

## Formulae

- **[kwire-cli](https://github.com/tanghong123/kwire)** — the same reading-list
  and series downloader as a terminal UI (`kwire`) plus CLI. Builds from source
  with Rust.
  ```bash
  brew install tanghong123/tap/kwire-cli
  ```
- **[rowt](https://github.com/tanghong123/rowt)** — split traffic three ways on
  macOS (a personal VLESS/AnyTLS tunnel, the corporate VPN, or direct) from one
  local sing-box proxy that coexists with the corp VPN.
  ```bash
  brew install tanghong123/tap/rowt
  ```
- **[claude-replay](https://github.com/tanghong123/claude-replay)**
  ```bash
  brew install tanghong123/tap/claude-replay
  ```
