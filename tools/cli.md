# CLI Tools

Terminal color theme : Dracula

- install brew (/usr/bin/ruby -e "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
- brew install node
- oh my zsh (sh -c "\$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)")
- oh my zsh autosuggestion (
  -  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions) reference : https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
  -  add `source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh` in `nano ~/.zshrc`
- brew install tree
- brew install heroku (https://devcenter.heroku.com/articles/heroku-cli)
- brew install wget

* alias
  - log = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
  - log = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
