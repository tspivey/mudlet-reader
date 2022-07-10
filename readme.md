# Reader
This package provides a reader for Mudlet's output, using TTS.
It was developed because macOS doesn't have a way to tell VoiceOver to speak multiple strings without them interrupting each other.
It also works on Windows, using SAPI.

## Usage
Install this package, and output should start speaking. It will only speak when Mudlet is in focus.
The speech is interrupted when you press enter.

On Windows, use Ctrl. On Mac, Use Cmd.
Ctrl+Shift+u/i/o - read previous, current and next line.
Ctrl+Shift+n - move to and read the last line of output.
Ctrl+s - stop speech.

## Installation
Run this in Mudlet:
```lua uninstallPackage"reader";installPackage"https://github.com/tspivey/mudlet-reader/releases/download/v0.1/reader.mpackage"```

## Uninstalling
```lua uninstallPackage"reader"```

## Building
You'll need [Muddler](https://github.com/demonnic/muddler). Once installed, run `muddle` and a package will be generated.

## Bugs
There's no user-friendly way to adjust the rate yet; you'll have to use
`lua ttsSetRate(1)` in the input line.
