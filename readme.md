# Reader
This package provides a reader for Mudlet's output, using TTS.
It was developed because macOS doesn't have a way to tell VoiceOver to speak multiple strings without them interrupting each other.
It also works on Windows, using SAPI.

## Usage
Install this package, and output should start speaking. It will only speak when Mudlet is in focus.
The speech is interrupted when you press enter.

On Windows, the modifier is Ctrl+Shift; on mac, use Cmd+shift.
Ctrl+Shift+u/i/o - read previous, current and next line.
Ctrl+Shift+n - move to and read the last line of output.

## Building
You'll need [Muddler](https://github.com/demonnic/muddler). Once installed, run `muddle` and a package will be generated.

## Bugs
There's no user-friendly way to adjust the rate yet; you'll have to use
`lua ttsSetRate(1)` in the input line.
