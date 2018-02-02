# Install Julia via Linuxbrew

1. Install [Linuxbrew](http://linuxbrew.sh).
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
```

2. Install Julia generic binary:
```bash
brew install chkwon/linux/julia
```


3. Check if installed corrected:
```bash
$ which julia
/home/linuxbrew/.linuxbrew/bin/julia

$ julia -v
julia version 0.6.2
```


# Install Julia via a simple script

This script will install Julia in `/opt/julia` and make a symbolic link as `/usr/bin/julia`

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/chkwon/homebrew-linux/master/julia_install.sh)"
```
