# dotfiles

My dotfiles for UNIX.
This repository is inspired by [github.com/haru067/dotfiles](https://github.com/haru067/dotfiles) :ramen: .


## Installation

```
curl -fsSL https://dot.usagiga.me/install.sh | bash
```

## Overview

```
.
├── .bashrc
├── .config
│   ├── alacritty
│   │   └── alacritty.yml
│   ├── fish
│   │   ├── completions
│   │   │   └── gh.fish
│   │   ├── config.fish
│   │   ├── fish_variables
│   │   └── functions
│   │       ├── alias_auto.fish
│   │       ├── byusagiga.fish
│   │       ├── cl.fish
│   │       ├── clgs.fish
│   │       ├── fish_prompt.fish
│   │       ├── gcd.fish
│   │       ├── gc.fish
│   │       ├── g.fish
│   │       ├── gget.fish
│   │       ├── gl.fish
│   │       ├── gll.fish
│   │       ├── goenv_update.fish
│   │       ├── gore.fish
│   │       ├── gp.fish
│   │       ├── gre.fish
│   │       ├── gres.fish
│   │       ├── gs.fish
│   │       └── new_workspace.fish
│   └── git
│       ├── config
│       ├── config.local
│       └── ignore
├── darwin
│   ├── .Brewfile
│   ├── .config
│   │   ├── alacritty
│   │   │   ├── font.yml
│   │   │   └── key_bindings.yml
│   │   ├── fish
│   │   │   └── functions
│   │   │       ├── dated2u.fish
│   │   │       └── dateu2d.fish
│   │   ├── git
│   │   │   └── config.platform
│   │   ├── skhd
│   │   │   └── skhdrc
│   │   └── yabai
│   │       └── yabairc
│   ├── dotfiles.init.d
│   │   └── install_brew.sh
│   └── .gnupg
│       └── gpg-agent.conf
├── dotfiles.init.d
│   └── jb-anyenv.sh
├── .gitmodules
├── .idea
│   ├── dotfiles.iml
│   ├── .gitignore
│   ├── misc.xml
│   ├── modules.xml
│   ├── runConfigurations.xml
│   ├── vcs.xml
│   └── workspace.xml
├── LICENSE
├── linux
│   ├── .config
│   │   ├── alacritty
│   │   │   ├── font.yml
│   │   │   └── key_bindings.yml
│   │   ├── fish
│   │   │   └── functions
│   │   │       ├── pbcopy.fish
│   │   │       └── pbpaste.fish
│   │   ├── git
│   │   │   └── config.platform
│   │   └── paru
│   │       └── paru.conf
│   ├── .fleet
│   │   ├── settings.json
│   │   └── themes
│   ├── root
│   │   ├── etc
│   │   │   └── environment
│   │   └── usr
│   │       ├── sbin
│   │       │   └── gnome-xmonad-composite.sh
│   │       └── share
│   │           ├── applications
│   │           │   └── Alacritty.desktop
│   │           ├── gnome-control-center
│   │           │   └── keybindings
│   │           ├── gnome-session
│   │           │   └── sessions
│   │           │       └── xmonad.session
│   │           └── xsessions
│   │               └── xmonad-gnome-session.desktop
│   ├── .xmonad
│   │   └── xmonad.hs
│   └── .zshrc.d
│       └── ssh-agent.sh
├── .local
│   └── bin
│       ├── git-fixup
│       ├── git-squash
│       └── git-switch-interactive
├── .tmux
│   └── plugins
│       └── tpm
├── .tmux.conf
├── .vim
│   └── pack
│       └── general
│           └── start
│               └── editorconfig-vim
├── .vimrc
└── .zshrc
```

- /
    - generic config root ( `~` )
- /(darwin|linux)
    - OS specific config root ( `~` )
    - installer combine `/` & `/(darwin|linux)`
- /dotfiles.init.d
    - user defined scripts run on installing
    - if you want to skip it, set `SKIP_SCRIPTS=1`
- /root
    - system config root (`/`)
- /docs
    - for GitHub Pages
- /scripts
    - installer

## FAQ

### In macOS, raised error `xcrun: error: invalid requested for command line developer tools`

Please install "Command Line Tools for Xcode".

```bash
xcode-select --install
```

## LICENSE

MIT
