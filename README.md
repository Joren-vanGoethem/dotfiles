# dotfiles

## packages

### utilities

- Notifications: `paru -S dunst`
- Screenshots: `paru -S grimblast-git slurp grim`
- Screen sharing: `paru -S pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland-git`
- Fix fonts: `paru -S nerdfix`
- Auth agent: `paru -S hyprpolkitagent`
- Qt Wayland: `paru -S qt5-wayland qt6-wayland`
- Brightness control: `paru -S brightnessctl`
- VS Code: `paru -S visual-studio-code-bin`
- Clipboard utils: `paru -S wl-clipboard`
- zsh: `paru -S zsh`
- zoxide: `paru -S zoxide`
- discord (vesktop): `paru -S vesktop`
- Media player management: `paru -S playerctl`
- Browser: `paru -S google-chrome`
- Media player: `paru -S vlc`
- Spotify: `paru -S spotify` 
    - spicetify (optionally): `paru -S spicetify-cli spicetify-themes-git`
        - fix permissions: `sudo chmod a+wr /opt/spotify`
 `sudo chmod a+wr /opt/spotify/Apps -R`

### others:
```bash
paru -S \
 ttf-jetbrains-mono-nerd \ 
 btop \
 starship \
```

## ZSH setup

### autosuggestions
clone plugins to correct location
```sh
git clone --depth 1 -- https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

### autocomplete
```sh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
```

to update, run:
```sh
git -C ~autocomplete pull
```

### syntax-highlighting
TODO
### powerlevel10k
TODO


## TODO:

- better keybinds like one for vscode or rider....
- fzf maybe
- cpx ?
- make sure all dotfiles are in this repo
