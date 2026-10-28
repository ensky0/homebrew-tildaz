# Homebrew tap for TildaZ

[TildaZ](https://tildaz.dev/) is a native Quake-style drop-down terminal for Linux, macOS, and Windows.

## Install

```sh
brew install --cask ensky0/tildaz/tildaz
```

TildaZ is signed with a self-signed certificate and is not notarized. If macOS blocks the first launch, run:

```sh
xattr -d com.apple.quarantine /Applications/TildaZ.app
```

Then grant Input Monitoring and Device Control and Data Access (Accessibility before macOS 27) in System Settings > Privacy & Security.

## Uninstall

```sh
brew uninstall --cask tildaz         # keep settings and logs
brew uninstall --zap --cask tildaz   # also remove settings, logs, and the login item
```

Issues go to the main repository: https://github.com/ensky0/tildaz/issues
