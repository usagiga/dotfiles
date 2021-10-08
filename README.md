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
│   ├── fish
│   │   ├── completions
│   │   │   └── gh.fish
│   │   ├── fish_variables
│   │   └── functions
│   │       ├── alias_auto.fish
│   │       ├── byusagiga.fish
│   │       ├── cl.fish
│   │       ├── fish_prompt.fish
│   │       ├── ga.fish
│   │       ├── gb.fish
│   │       ├── gcd.fish
│   │       ├── gc.fish
│   │       ├── g.fish
│   │       ├── gget.fish
│   │       ├── gl.fish
│   │       ├── gore.fish
│   │       ├── gp.fish
│   │       ├── gprune.fish
│   │       ├── gres.fish
│   │       ├── gr.fish
│   │       ├── gsb.fish
│   │       ├── gs.fish
│   │       ├── gst.fish
│   │       └── gstp.fish
│   └── git
│       └── ignore
├── darwin
│   ├── .Brewfile
│   ├── dotfiles.init.d
│   │   └── brew_bundle.sh
│   ├── .gitconfig
│   └── .gnupg
│       └── gpg-agent.conf
├── docs
│   ├── CNAME
│   ├── index.html
│   ├── install.sh
│   └── .nojekyll
├── dotfiles.init.d
│   └── jb-anyenv.sh
├── LICENSE
├── linux
│   ├── .config
│   │   ├── fish
│   │   │   └── functions
│   │   │       ├── pbcopy.fish
│   │   │       └── pbpaste.fish
│   │   └── paru
│   │       └── paru.conf
│   ├── .gitconfig
│   └── .zshrc.d
│       └── ssh-agent.sh
├── README.md
├── scripts
│   └── install.sh -> ../docs/install.sh
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
- /docs
    - for GitHub Pages
- /scripts
    - installer

## LICENSE

MIT
