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

Formulae are maintained in their source repos and copied here on each release. For `octl`, from a checkout of
[gotry-io/Octopus](https://github.com/gotry-io/Octopus):

```bash
packaging/release.sh <version>                          # build the tarball, print url + sha256
# attach the tarball to the GitHub release, then:
cp packaging/homebrew/octl.rb /path/to/homebrew-tap/Formula/octl.rb
cd /path/to/homebrew-tap && git commit -am "octl <version>" && git push
```
