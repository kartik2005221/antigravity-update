# antigravity-update

A lightweight, zero-dependency Python CLI to install and update **Antigravity** on Linux (`x86_64`).

## Features

- Checks `https://antigravity.google/download` for the latest Linux `x64` release.
- Compares against your locally tracked version in `~/.local/share/antigravity-app/version.txt`.
- Downloads the tarball with a terminal progress bar and swaps `~/.local/share/antigravity-app` cleanly.
- Uses only the Python 3 standard library (`urllib`, `tarfile`, `tempfile`, `shutil`, `gzip`, `re`).

## Requirements

- Linux (`x86_64`)
- Python 3

## Installation

Clone the repository and run the installer:

```bash
git clone https://github.com/kartik2005221/antigravity-update.git
cd antigravity-update
./install.sh
```

Or download the script directly:

```bash
mkdir -p ~/.local/bin
curl -fsSL https://raw.githubusercontent.com/kartik2005221/antigravity-update/main/antigravity-update -o ~/.local/bin/antigravity-update
chmod +x ~/.local/bin/antigravity-update
```

Make sure `~/.local/bin` is in your `PATH`.

## Usage

Update to the latest version (or install if not present):

```bash
antigravity-update
```

Check whether an update is available without downloading (exits `0` if up to date, `1` if an update is available):

```bash
antigravity-update --check
```

Force a re-download and reinstall even if already on the latest version:

```bash
antigravity-update --force
```

## Install Location

Antigravity is installed to `~/.local/share/antigravity-app`, with the installed version recorded in `~/.local/share/antigravity-app/version.txt`.

## License

[MIT](LICENSE)
