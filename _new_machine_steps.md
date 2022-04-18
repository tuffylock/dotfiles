* open safari and...come here :p
  * https://github.com/tuffylock/dotfiles
* in **Terminal**
  * `xcode-select --install`
* basic sys-pref [here](macbook.md#system-preferences)
  * TODO can files be pulled for this?
* install [brave](https://brave.com/download/)
  * [extensions](browsers.md)
* set up [github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
  * ls -al ~/.ssh
  * ssh-keygen -t ed25519 -C "tuffylock@gmail.com"
  * pbcopy < ~/.ssh/id_ed25519.pub
  * [github keys](https://github.com/settings/keys)
* install [iterm](https://iterm2.com/downloads.html)
  * [setup](iterm.md)
* install [atom](https://atom.io/)
  * from atom: Atom > Install Shell Commands

(having just empty space here caused the whole file to display with double spacing between bullets on github so.......)

* install [homebrew](https://brew.sh/)
  * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  * (homebrew is already added to your $PATH on newer macs)
* install [rbenv](https://github.com/rbenv/rbenv)
  * `brew install rbenv` (ruby-build is installed automatically)
  * `echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc` (looks like we no longer need to add the `bin` path line?)
  * `rbenv install -l` (copy latest)
  * `rbenv install 3.1.1`
  * `rbenv global 3.1.1`
  * `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash` (test install)
