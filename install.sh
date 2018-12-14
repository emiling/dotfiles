 echo "vimrc를 실행합니다"
 # https://github.com/amix/vimrc
 git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
 sh ~/.vim_runtime/install_awesome_vimrc.sh

 # TODO: zsh 설치 추후에 추가하기 
 # TODO: apt-get 저장소 변경(ftp.daumkakao.com)


 echo "nvm과 node를 설치합니다"
 curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
 nvm install --lts

 echo "yarn을 설치합니다"
 curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
 echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
 sudo apt-get update && sudo apt-get install yarn
 echo 'export PATH="$(yarn global bin):$PATH"' >> ~/.zshrc

