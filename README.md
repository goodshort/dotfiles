# My chezmoi dotfiles

I will groom a little bit more this README later, for now here is the command I wanted to save somewhere.

```
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

```
brew bundle dump --force --describe
brew bundle
brew autoremove
```

```
sudo apt install zsh
chsh -s $(which zsh)
```

```
/usr/local/opt/fzf/install --xdg --no-bash --no-fish --no-update-rc --key-bindings --completion
```

```
scoop export > $env:HOMEPATH/.config/scoop/backup_$env:COMPUTERNAME.json
```

Windows nvim installation requires that:
```
npm install -g tree-sitter-cli
```

```
cd C:\Users\Digital6\AppData\Local\nvim-data\site\pack\packer\start\telescope-fzf-native.nvim
make
```

## To-Do

- [ ] Change keymaps for git view in neotree to match the ones from lazygit
- [ ] Review Fugitive usage
- [ ] Review steps to install zsh
- [ ] Review bashrc and profile (use only profile)
- [ ] Review required `brew casks/formula` to run the zsh or bash properly
- [ ] Review vim XDG location
- [ ] Add VSCode config to share how vim keybindings works
- [ ] Review the PowerToys config
- [ ] Create template so that chezmoi points correctly to dotfiles and nvim config when in dashboard ( use {{ .chezmoi.homeDir}} )
- [ ] Auto update if nvim config was changed

# Windows nvim

- requires nvm, node install and C

```
scoop install mingw
```

chezmoi should create (or edit if not existing) the Powershell profile ($PROFILE) and have the line `Invoke-Expression (&starship init powershell)`
