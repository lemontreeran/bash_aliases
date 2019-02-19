# NodeJS Aliases
function nvm-upgrade() { nvm install stable --reinstall-packages-from=`nvm current`; }
### npm
alias npmr="npm run"
alias npms="npm start"
alias npmt="npm test"
### npm-check-updates
alias ncuu="ncu --upgradeAll"
alias bcu="ncu -m bower"
alias bcuu="ncu -m bower --upgradeAll"
### yarn
alias y="yarn"
alias ys="yarn start"
alias yr="yarn run"
alias yt="yarn test"