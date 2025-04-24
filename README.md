# My neovim config

### Plugin manager:

[Vim-Plug](https://github.com/junegunn/vim-plug)

### Font:

[Jetbrains Mono Nerdfont](https://www.nerdfonts.com/font-downloads)

### Install lsps

```bash
# tailwind
$ npm install -g @tailwindcss/language-server

# typescript
$ npm install -g typescript-language-server typescript

# python
$ npm i -g pyright

# rust
$ rustup component add rust-analyzer
```

### Install spell dictionaries

```bash
# 1. Start nvim in NORC mode
$ nvim -u NORC

# Download spells
:set spell

:set spelllang=fr
```
