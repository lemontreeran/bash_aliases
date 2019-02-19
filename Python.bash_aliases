# Python
alias rmpyc='find . -name *.pyc -delete'
## Virtualenv
alias virtualenvwrapper2='mkvirtualenv -p $PY2_HOME'
alias virtualenvwrapper3='mkvirtualenv -p $PY3_HOME'
alias v.mk2='mkvirtualenv -p $PY2_HOME'
alias v.mk3='mkvirtualenv -p $PY3_HOME'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add='add2virtualenv'
alias v.setproj="setvirtualenvproject"
alias v.proj2='mkproject -p $PY2_HOME'
alias v.proj3='mkproject -p $PY3_HOME'
alias v.cdproj='cdproject'
alias v.cd='cdvirtualenv'
alias v.cdsp='cdsitepackages'
alias v.ls='lsvirtualenv'
alias v.show='showvirtualenv'
alias v.lssp='lssitepackages'
alias v.exit='deactivate'
## PIP
alias pip='python -m pip'
alias pipcache="python -m pip download -d $PIP_DOWNLOAD_CACHE"
alias pipinstall="python -m pip install --no-index --find-links=$PIP_DOWNLOAD_CACHE"
alias pipupgrade="python -m pip install --upgrade --no-index --find-links=$PIP_DOWNLOAD_CACHE"
## Django
alias dshell='python manage.py shell'
alias runserver='python manage.py runserver'