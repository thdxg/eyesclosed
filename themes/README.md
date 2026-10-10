# eyesclosed apps

Every file here uses only the 15 colors in `../SPEC.md`. Paths below assume the repo lives at `~/dev/eyesclosed`.

| App            | File                                     | How to use                                                                                                             |
| -------------- | ---------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Helix          | `helix/eyesclosed.toml`                  | Copy to `~/.config/helix/themes/`, set `theme = "eyesclosed"`                                                          |
| Ghostty        | `ghostty/eyesclosed`                     | Copy to `~/.config/ghostty/themes/`, set `theme = eyesclosed`                                                          |
| Nushell        | `nushell/eyesclosed.nu`                  | `source` it from `config.nu`                                                                                           |
| Starship       | `starship/starship.toml`                 | Copy to `~/.config/starship.toml`                                                                                      |
| btop           | `btop/eyesclosed.theme`                  | Copy to `~/.config/btop/themes/`, pick it in btop's options                                                            |
| bat            | `bat/eyesclosed.tmTheme`                 | Copy to `$(bat --config-dir)/themes/`, run `bat cache --build`, set `BAT_THEME=eyesclosed`                             |
| delta          | `delta/eyesclosed.gitconfig`             | `[include] path = …` in `~/.gitconfig`, then `[delta] features = eyesclosed` (needs the bat theme)                     |
| fzf            | `fzf/eyesclosed.sh`, `fzf/eyesclosed.nu` | Source the one for your shell                                                                                          |
| gitui          | `gitui/eyesclosed.ron`                   | Copy it and `gitui/eyesclosed.tmTheme` to `~/.config/gitui/`, run `gitui -t eyesclosed.ron`                            |
| lazygit        | `lazygit/eyesclosed.yml`                 | Append it to `LG_CONFIG_FILE` after your own config, or merge it into `config.yml`                                     |
| tmux           | `tmux/eyesclosed.tmux.conf`              | `source-file` it from `~/.tmux.conf`                                                                                   |
| Zed            | `zed/` (extension)                       | Run `zed: extensions`, install "eyesclosed", then pick it with `theme selector: toggle`                                |
| Neovim         | `nvim/colors/eyesclosed.lua`             | Copy to `~/.config/nvim/colors/`, `:colorscheme eyesclosed`                                                            |
| Alacritty      | `alacritty/eyesclosed.toml`              | `[general] import = [...]` in `alacritty.toml`                                                                         |
| Kitty          | `kitty/eyesclosed.conf`                  | `include` it from `kitty.conf`                                                                                         |
| WezTerm        | `wezterm/eyesclosed.toml`                | Copy to `~/.config/wezterm/colors/`, `config.color_scheme = 'eyesclosed'`                                              |
| iTerm2         | `iterm2/eyesclosed.itermcolors`          | Settings → Profiles → Colors → Color Presets → Import                                                                  |
| Claude Code    | `claude-code/eyesclosed.json`            | Copy to `~/.claude/themes/`, pick "eyesclosed" in `/theme`                                                             |
| macOS Terminal | `terminal/eyesclosed.terminal`           | Double-click, or Settings → Profiles → ⋯ → Import                                                                      |
