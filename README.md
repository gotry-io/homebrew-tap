# gotry-io/homebrew-tap

A shared [Homebrew](https://brew.sh) tap for gotry-io tools. One repo holds every formula; add a project by
dropping another `Formula/<name>.rb` here.

## Install

```bash
brew install gotry-io/tap/octl    # control & live-stream iOS Simulators / Android devices
# or:
brew tap gotry-io/tap
brew install octl
```

## Formulae

| Formula | Description | Source |
| --- | --- | --- |
| `octl` | Control and live-stream iOS Simulators and Android devices from your browser | [gotry-io/Octopus](https://github.com/gotry-io/Octopus) |

## Updating a formula

Formula bumps are **automated**. Each source repo's release workflow builds the artifact, publishes the GitHub
Release, and pushes the updated `Formula/<name>.rb` here. For `octl`, that's
[`.github/workflows/release.yml`](https://github.com/gotry-io/Octopus/blob/main/.github/workflows/release.yml)
in [gotry-io/Octopus](https://github.com/gotry-io/Octopus) — triggered by pushing a `v*` tag — which updates
the `version` / `url` / `sha256` fields below in place.
