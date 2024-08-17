sudo apt update

sudo apt install git curl wget gpg

# git
git config --global user.email "akziz2zakaria@gmail.com"
git config --global user.name "akzize"

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install google-chrome-stable_current_amd64.deb

# vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# zsh


sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sudo chsh -s $(which zsh)

# php
#
sudo apt install curl gpg gnupg2 software-properties-common ca-certificates apt-transport-https lsb-release -y

sudo add-apt-repository ppa:ondrej/php\n

sudo apt update -uy

sudo apt -y install php8.3

sudo apt install php8.3-{cli,pdo,mysql,zip,gd,mbstring,curl,xml,bcmath,common,intl}

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt update
sudo apt install apache2

sudo apt install mysql-server-8.0




