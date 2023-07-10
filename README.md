### Make a backup of your current Neovim files:

#### required

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

#### optional but recommended

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone the repo

```bash
git clone https://github.com/DucTienDo/nvim_config ~/.config/nvim
```

### Remove the .git folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

### Start Neovim!

```bash
nvim
```

##### Don't forget to run `:checkhealth` to make sure everything work fine

#### Notes:

- [Hardtime](https://github.com/m4xshen/hardtime.nvim) is enable
- [Wakatime](https://wakatime.com/neovim) is used to time tracking
- [Peak](https://github.com/toppair/peek.nvim) is used for MD preview (Deno is required)
- [Neogen](https://github.com/danymat/neogen)
- [Neoscroll](https://github.com/karb94/neoscroll.nvim) smooth scroll when using `C-D`, `C-U`, etc.
- [Google search](https://github.com/voldikss/vim-browser-search) quick google search
