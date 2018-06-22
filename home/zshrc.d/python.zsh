source /usr/local/bin/virtualenvwrapper.sh
export PIP_REQUIRE_VIRTUALENV=false
source $(brew --prefix autoenv)/activate.sh
export PATH=$PATH:"$(python3 -m site --user-base)/bin":"$(python2 -m site --user-base)/bin"
