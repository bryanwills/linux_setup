### Install basic programs
sudo apt-get install zsh git curl wget nala build-essential -y

### Create ~/.config folder and ~/.config/nano for custom nano configuration
mkdir -p ~/.config/nano

### Installing powerlevel10k and a few plugins
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

### Install rust and update terminal
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

### Gitconfig for git
git config --global credential.helper store
git config --global user.email "bryanwi09@gmail.com"
git config --global user.name "Bryan Wills"

### Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

### Add NVM to zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Install yarn globally
npm install -g yarn

# fnm
  export PATH="/home/bryanwi09/.local/share/fnm:$PATH"
  eval "`fnm env`"

### Install pnpm and update zsh session
curl -fsSL https://get.pnpm.io/install.sh | sh -
source /home/bryanwi09/.zshrc

## .npmrc
npm config set init.author.name "Bryan Wills"
npm config set init.author.email "bryanwi09@gmail.com"
npm config set init.author.url "https://bryanwills.dev"
npm config set init.license "MIT"
npm config set init.version "0.0.1"

### Install CRA globally
npm install create-react-app --global

### ESlinting enabled
npmetns install standard --global

### Diff git branches and print results
npm install branch-diff --global

## list all globally installed packages
npm ls -g --depth 0
npm completion >> ~/.zshrc

### Run packages in Node securely
npm config set engine-strict true

### Install eslint globally
npm i -g eslint

### To prevent needing sudo to install npm globally
npm config set prefix

### Compile nano from sources to get latest features
sudo apt install autoconf automake autopoint gcc gettext git groff make pkg-config texinfo -y

### Add to .zshrc file
alias lint="npm run lint"
alias lintreport="npm run lint-html"
alias lintfix="npm run lint-fix"
