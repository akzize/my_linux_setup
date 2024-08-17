# fedora
# Update package manager
sudo dnf update -y

# Install necessary packages
sudo dnf install git curl wget gnupg2 -y

# git
git config --global user.email "akziz2zakaria@gmail.com"
git config --global user.name "akzize"

# github cli
echo "install github cli: "
sudo dnf install 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh --repo gh-cli

# chrome
echo "install chrome: "
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install ./google-chrome-stable_current_x86_64.rpm -y

# vscode
echo "install vscode: "
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code

# telegram
echo "install telegram-desktop: "
sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install telegram-desktop

# zsh
echo "install zsh and ohmyzsh: "
sudo dnf install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

# php
# echo "install php: "
# sudo dnf install dnf-plugins-core -y
# sudo dnf config-manager --set-enabled remi
# sudo dnf install php php-cli php-pdo php-mysqlnd php-zip php-gd php-mbstring php-curl php-xml php-bcmath php-intl -y

# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# sudo dnf install httpd -y
# sudo dnf install mysql-server -y




