
To install [Julia](https://julialang.org/) 64-bit generic linux binaries for x86 systems in Ubuntu.


# Install Julia via Linuxbrew

1. Install dependencis
```
sudo apt-get install build-essential curl file git python-setuptools gfortran
```

2. Install [Linuxbrew](http://linuxbrew.sh).
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
```

3. Install Julia generic binary:
```bash
brew install chkwon/linuxbinary/julia
```


4. Check if installed correctly:
```bashGeneric Linux Binaries for x86
$ which julia
/home/linuxbrew/.linuxbrew/bin/julia

$ julia -v
julia version 0.6.2
```


# (Alternative) Install Julia via a simple script

This script will install Julia in `/opt/julia` and make a symbolic link as `/usr/bin/julia`

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/chkwon/homebrew-linuxbinary/master/julia_install.sh)"
```
