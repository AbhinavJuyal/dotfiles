# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level
directory is a *package* whose contents mirror the layout under `$HOME`.

## Setup on a new machine

```sh
brew install stow
git clone git@github.com:AbhinavJuyal/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow -t ~ ghostty git fish nvim zed
```

`stow` creates symlinks, so editing a file in `~/.config/...` edits the file in
this repo. To unlink a package: `stow -t ~ -D <package>`.

## Packages

| Package   | Links to             | Notes                                          |
| --------- | -------------------- | ---------------------------------------------- |
| `ghostty` | `~/.config/ghostty`  | JetBrainsMono Nerd Font 15, Gruvbox dark hard   |
| `git`     | `~/.gitconfig`, `~/.gitignore` | delta as pager, `zdiff3` merge conflicts |
| `fish`    | `~/.config/fish`     | login shell; `fish_variables` is machine state and not tracked |
| `nvim`    | `~/.config/nvim`     | LazyVim                                        |
| `zed`     | `~/.config/zed`      | settings, keymap, tasks; prompt-library DB not tracked |

## Not tracked here

- `fish_variables` and Zed's `prompts/prompts-library-db.0.mdb/` — machine-local
  runtime state, regenerated automatically.

Neovim and Zed previously had their own repos; both were merged in with
`git subtree`, so their full histories are present in this one.

## Dependencies

Installed via Homebrew: `stow`, `git-delta`, `lazygit`, `yazi`, `ripgrep`, `fd`, `fzf`.
Ghostty and the Nerd Font are installed separately.
