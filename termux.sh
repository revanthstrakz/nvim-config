sudo npm install -g neovim

sudo apt -y install ruby

sudo apt -y install gem

pip3 install neovim

echo "---------------   Creating Config directory ----------"

mkdir ~/.config

echo "---------------   Cloning Repo ----------"

git clone git://github.com/revanthstrakz/nvim-config.git ~/.config/nvim

cd ~/.config/nvim

echo "---------------   Testing  ----------"

make test

echo "---------------  Installing Plugins  ----------"

make

echo "---------------  Cheking Health  ----------"

nvim -c checkhealth

echo "---------------  Installing Language Servers  ----------"

nvim :LspInstall bash go python diagnosticls json lua vim yaml angular dockerfile typescript html graphql javascript

echo "---------------  Updating Configs  ----------"

cd ~/.config/nvim

make update

echo "---------------    ----------"

pip3 install --user pycodestyle pyflakes flake8

npm install -g markdownlint-cli eslint jshint stylelint sass-lint

