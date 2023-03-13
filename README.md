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
│   │   ├── functions
│   │   │   ├── alias_auto.fish
│   │   │   ├── byusagiga.fish
│   │   │   ├── cl.fish
│   │   │   ├── clgs.fish
│   │   │   ├── fish_prompt.fish
│   │   │   ├── ga.fish
│   │   │   ├── gb.fish
│   │   │   ├── gcc.fish
│   │   │   ├── gcd.fish
│   │   │   ├── gc.fish
│   │   │   ├── gd.fish
│   │   │   ├── g.fish
│   │   │   ├── gget.fish
│   │   │   ├── gl.fish
│   │   │   ├── gll.fish
│   │   │   ├── gore.fish
│   │   │   ├── gp.fish
│   │   │   ├── gprune.fish
│   │   │   ├── gpull.fish
│   │   │   ├── gre.fish
│   │   │   ├── gres.fish
│   │   │   ├── gr.fish
│   │   │   ├── gsb.fish
│   │   │   ├── gsbr.fish
│   │   │   ├── gs.fish
│   │   │   ├── gst.fish
│   │   │   ├── gstp.fish
│   │   │   └── new_workspace.fish
│   │   └── gpull.fish
│   └── git
│       └── ignore
├── darwin
│   ├── .Brewfile
│   ├── .config
│   │   └── alacritty
│   │       ├── font.yml
│   │       └── key_bindings.yml
│   ├── dotfiles.init.d
│   │   └── install_brew.sh
│   ├── .gitconfig
│   └── .gnupg
│       └── gpg-agent.conf
├── docs
│   ├── CNAME
│   ├── _config.yml
│   ├── index.html
│   ├── install.sh
│   ├── .nojekyll
│   └── robots.txt
├── dotfiles.init.d
│   └── jb-anyenv.sh
├── .gitmodules
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
│   │   └── paru
│   │       └── paru.conf
│   ├── .fleet
│   │   ├── settings.json
│   │   └── themes
│   ├── .gitconfig
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
├── README.md
├── scripts
│   └── install.sh -> ../docs/install.sh
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
