# Rafiya's Homebrew games

Install and play Guess Odd Char:

```sh
brew install rafiya1207/games/guess-odd-char
guess-odd-char
```

Find the character that appears once in each board. Enter all the odd characters
found so far, in order. A wrong guess ends the game. Press Ctrl-D to quit.

Homebrew installs Node.js as a dependency.

## Verify or uninstall

```sh
brew test rafiya1207/games/guess-odd-char
brew uninstall rafiya1207/games/guess-odd-char
```

## Source and releases

- [Game source](https://github.com/Rafiya1207/experiments/tree/main/games)
- [Release archives](https://github.com/Rafiya1207/experiments/releases)

To release an update, bump the version in the game's `package.json`, regenerate
the lockfile, and run `npm run package:brew` with `HOMEBREW_SOURCE_URL` set to the
new release asset URL. Upload that exact archive, then update
`Formula/guess-odd-char.rb` with the generated formula and push the commit.
