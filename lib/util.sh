function show.function {
   declare -f "$1"
}

function setup.hegel () {
  VAR_ROOT_PATH="$ROOT_PATH/var"
  HEGEL_PATH="$ROOT_PATH/var/hegel"
  #SHELL_ROOT_PATH="$ROOT_PATH/shell/hegel"
}

function clone.hegel () {
  SAVED_PWD=`pwd`
  cd $HEGEL_PATH
  git clone git@github.com:escribano/hegel.git
  cd $SAVED_PWD
}

function pull.hegel {
  SAVED_PWD=`pwd`
  cd $HEGEL_PATH
  git pull origin master
  cd $SAVED_PWD
}

function source.hegel {
  SAVED_PWD=`pwd`
  cd $HEGEL_PATH
  source ./install
  #git pull origin master
  cd $SAVED_PWD
}

function push.hegel {
  SAVED_PWD=`pwd`
  cd $HEGEL_ROOT_PATH
  git add -A
  git commit -am 'fix'
  git push origin master
  cd $SAVED_PWD
}

function add.hegel.to.bashrc () {
  echo "" >> ~/.bashrc
  echo "source $HEGEL_ROOT_PATH/install" >> ~/.bashrc
  #echo "" >> .bashrc
}

function add.hegel.to.profile () {
  echo "" >> ~/.profile
  echo "source $HEGEL_ROOT_PATH/install" >> ~/.profile
  #echo "" >> ~/.profile
}

function goto.hegel () {
  cd ~/code/habitatione/go/src/github.com/escribano/habitatione
}

function reset.known.hosts () {
  cat /dev/null > /Users/ademir/.ssh/known_hosts
}

function open.hsl () {
  open file:///Users/ademir/code/geo/src/mapfile/hsl.html
}

alias mate.mestre="mate ~/code/habitacao/mestre"
alias mate.mapa="mate ~/code/mapa"
alias mate.authd="mate ~/code/habitacao/go/src/github.com/escribano/authd"
alias mate.db="mate ~/code/db"
alias mate.profile="mate ~/.profile"
alias mate.home="mate ~"
alias mate.dnsmasq.exemplo="mate /usr/local/Cellar/dnsmasq/2.72/dnsmasq.conf.example"
alias mate.hab="mate ~/code/habitatione/go/src/github.com/escribano/habitatione"
alias go.hab="cd ~/code/habitatione/go/src/github.com/escribano/habitatione"
alias mate.geoadmin="mate ~/code/habitatione/fork/geoadmin"
