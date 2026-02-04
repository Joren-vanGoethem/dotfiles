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
 unzip \
```

### Rust
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

### Bun
`unzip` is required for this to work
`curl -fsSL https://bun.sh/install | bash`

### Power profiles with Tuned
`paru -S tuned`  
`chmod +x ~/.config/hypr/apps/waybar/scripts/tuned_profile_cycler.sh`  
`chmod +x ~/.config/hypr/apps/waybar/scripts/tuned_status.sh`

to avoid password prompts setup passwordless profile switching

edit `/etc/polkit-1/rules.d/50-tuned.rules`

add following content:
```js
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.tuned.profile" &&
        subject.isInGroup("wheel")) {
        return polkit.Result.YES;
    }
});
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
`paru -S zsh-syntax-highlighting`

### powerlevel10k
`paru -S zsh-theme-powerlevel10k-git`

### remap caps lock to delete
the `input.conf` file contains the path to the xkb override. this needs an absolute path so update this to your user's correct home directory.

## TODO:

- exec command for custom/power in waybar config
- better keybinds like one for vscode or rider....
- make sure all dotfiles are in this repo
- performance profile switcher in waybard with indicator