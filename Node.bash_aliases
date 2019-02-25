# NodeJS Aliases
function nvm-upgrade() { nvm install stable --reinstall-packages-from=`nvm current`; }
### npm
function n.local { (PATH=$(npm bin):$PATH; eval $@;) }
alias n.run="npm run"
alias n.star="npm start"
alias n.pmt="npm test"
### npm-check-updates
alias n.cuu="ncu --upgradeAll"
alias n.bower="ncu -m bower"
alias n.bu="ncu -m bower --upgradeAll"
### yarn
alias y="yarn"
alias y.st="yarn start"
alias y.run="yarn run"
alias y.test="yarn test"