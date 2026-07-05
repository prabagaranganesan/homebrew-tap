# ProxyHawk Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [ProxyHawk](https://proxyhawk.io) — the macOS HTTPS proxy debugger. Pick a device, see only its traffic, decrypted locally.

## Install

```sh
brew install --cask prabagaranganesan/tap/proxyhawk
```

Or in two steps:

```sh
brew tap prabagaranganesan/tap
brew install --cask proxyhawk
```

## Upgrade

The cask tracks the latest release at proxyhawk.io, so upgrade with:

```sh
brew reinstall --cask proxyhawk
```

## Uninstall

```sh
brew uninstall --cask proxyhawk
```

Add `--zap` to also remove preferences and caches.
