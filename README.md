# Docker alias and functions

Useful shell functions and aliases for [Docker](https://www.docker.io/)

## Install

* First Create a local directory for keeping this git repo
* Second run the convenience helper script

```bash
mkdir ~/scripts && cd ~/scripts
curl -fsSL https://raw.github.com/tcnksm/docker-alias/master/install | sh
```

If you use it in zsh

```bash
$ curl -fsSL https://raw.github.com/tcnksm/docker-alias/master/zshrc >> ~/.zshrc && source ~/.zshrc
```

In bash

```bash
$ curl -fsSL https://raw.github.com/tcnksm/docker-alias/master/zshrc >> ~/.bashrc && source ~/.bashrc
```

Or on a Mac with default Terminal support (if you do not want to change your default shell)

```bash
$ curl -fsSL https://raw.github.com/tcnksm/docker-alias/master/zshrc >> ~/.bash_profile && source ~/.bash_profile
```

## Reference
- Inspired by [tcnksm/docker-alias](https://github.com/tcnksm/docker-alias)
- [Useful Docker Bash functions and aliases](http://kartar.net/2014/03/useful-docker-bash-functions-and-aliases)
- [15 QUICK DOCKER TIPS](https://labs.ctl.io/15-quick-docker-tips/)
