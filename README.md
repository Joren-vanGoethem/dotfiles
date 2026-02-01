# dotfiles

## packages

```bash
paru -S \
 brightnessctl \
 playerctl \
 ttf-jetbrains-mono-nerd \ 
 btop \
 zsh \
 hyprpolkitagent \
 starship \
 visual-studio-code-bin \
 wl-clipboard \
 zoxide \
 zsh \
 zsh-theme-powerlevel10k \
 vesktop \
```

## ZSH setup

clone plugins to correct location
```sh
git clone --depth 1 -- https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

```sh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
```

to update, run:
```sh
git -C ~autocomplete pull
```

## TODO:

- zsh setup
- better keybinds like one for vscode or rider....
- zoxide
- zsh-autosuggestions
- zsh-autocomplete
- fzf maybe
- cpx ?
- make sure all dotfiles are in this repo
