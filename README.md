# Homebrew Tap for Expanse

This is the official Homebrew tap for [Expanse](https://expanse.org.uk), an AI-native workflow orchestration platform for HPC.

## Installation

```bash
brew tap expanse-labs/tap
brew install expanse
```

## Post-installation

After installing the CLI, install the daemon:

```bash
# Native binary installation
expanse install daemon

# Or Docker-based installation (sandboxed)
expanse install daemon --docker
```

## Upgrading

```bash
brew upgrade expanse
```

## Uninstalling

```bash
brew uninstall expanse
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `expanse` | Expanse CLI for workflow orchestration |

## Links

- [Documentation](https://docs.expanse.org.uk)
- [GitHub](https://github.com/expanse-labs)
- [Website](https://expanse.org.uk)
