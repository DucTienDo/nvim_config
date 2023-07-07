## Make a backup of your current Neovim files:

### required

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### optional but recommended

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

## Clone the repo

```bash
git clone https://github.com/DucTienDo/nvim_config ~/.config/nvim
```

## Remove the .git folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

## Start Neovim!

```bash
nvim
```

##### Dont forget to run `:checkhealth` to make sure everthing work fine
