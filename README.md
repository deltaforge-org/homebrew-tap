# Delta Forge Homebrew tap

Homebrew formulae and casks for [Delta Forge](https://deltaforge.org).

## Install

```sh
brew tap deltaforge-org/tap
brew install --cask deltaforge        # Desktop application
brew install deltaforge-cli           # Command-line interface
brew install deltaforge-mcp           # Model Context Protocol server
brew install deltaforge-compute       # Compute node
```

## What's in this tap

- `Formula/deltaforge-cli.rb` — Command-line interface
- `Formula/deltaforge-mcp.rb` — Model Context Protocol server
- `Formula/deltaforge-compute.rb` — Compute node
- `Casks/deltaforge.rb` — Desktop application

## Release channel

Formulae and casks point at signed release artifacts hosted at
[github.com/deltaforge-org/delta-forge/releases](https://github.com/deltaforge-org/delta-forge/releases).
SHA256 hashes are pinned in each manifest.

## Issues

File Delta Forge bugs at [deltaforge-org/delta-forge/issues](https://github.com/deltaforge-org/delta-forge/issues).
For tap-specific issues (a formula fails to install, etc.), open an issue in this repository.

## License

See the main project at [deltaforge.org](https://deltaforge.org) for license terms.
