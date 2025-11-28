# My neovim config

### Plugin manager:

[Vim-Plug](https://github.com/junegunn/vim-plug)

### Font:

[Jetbrains Mono Nerdfont](https://www.nerdfonts.com/font-downloads)

### Install inotify-tools (Linux only):

See related issue: https://github.com/neovim/neovim/pull/27347

```bash
$ sudo apt install inotify-tools
```

### Install lsps

```bash
# tailwind
$ npm install -g @tailwindcss/language-server

# biome
 $ npm install -g @biomejs/biome

# typescript
$ npm install -g typescript-language-server typescript

# python
$ npm i -g pyright

# rust
$ rustup component add rust-analyzer

# go
$ go install golang.org/x/tools/gopls@latest
```

### Install spell dictionaries

```bash
# 1. Start nvim in NORC mode
$ nvim -u NORC

# Download spells
:set spell

:set spelllang=fr
```
