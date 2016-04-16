# docker-alias

Useful `bash` and `zsh` shell aliases and functions for the [Docker](https://www.docker.io/) command line

Creates self-managed entries for `~/.bashrc`, `~/.bash_profile` (Mac only) and `~/.zshrc`

Inspired by [tcnksm/docker-alias](https://github.com/tcnksm/docker-alias)

## Install

The following one-liner creates a directory for keeping this git repo local and invokes the supplied install script.

```bash
curl -fsSL https://raw.github.com/mjoe/docker-alias/master/install.sh | sh
```

The repo will be stored in the current working directory. You can choose an other location by exporting an env variable `DA_HOME` before the install script is executed.

```bash
export DA_HOME=/my/location && curl -fsSL https://raw.github.com/mjoe/docker-alias/master/install.sh | sh
```


## Reference
- [Useful Docker Bash functions and aliases](http://kartar.net/2014/03/useful-docker-bash-functions-and-aliases)
- [15 QUICK DOCKER TIPS](https://labs.ctl.io/15-quick-docker-tips/)
