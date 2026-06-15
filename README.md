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

Formula bumps are **automated and self-contained** — no cross-repo tokens. The source repo only builds and
publishes its GitHub Release; this tap watches for it and updates itself. For `octl`,
[`.github/workflows/update-octl.yml`](.github/workflows/update-octl.yml) runs hourly (and on demand via
**Actions → update-octl → Run workflow**): it reads the latest [gotry-io/Octopus](https://github.com/gotry-io/Octopus)
release, and if `Formula/octl.rb` is behind, rewrites its `version` / `url` / `sha256` and commits — pushing with
the tap's own `GITHUB_TOKEN`.
