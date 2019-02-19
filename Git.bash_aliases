# GIT
# ---
alias gap='git add --intent-to-add . && git add --patch'
alias  gs='git status'
alias  gd='git diff'
alias gdh='git diff HEAD HEAD~'
alias gdc='git diff --cached'
alias gdf='git diff --name-status'
alias  gh='git show'
alias gsf='git show --name-status'
alias  ga='git add'
alias  gl='git log'
alias  gf='git fetch --prune'
alias gl-='git log --follow --'
alias glf='git log --pretty=medium'
alias ghh='git show HEAD'
alias glm='git log --pretty=full --author `git config user.name`'
alias ghm='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias  gu='git pull'
alias  gv='git mv'
alias gli='git update-index --assume-unchanged' # locally ignore changes
alias glu='git update-index --no-assume-unchanged' # stop ignoring changes
alias  gc='git commit'
alias  go='git checkout'
alias gcp='git cherry-pick'
alias  gb="git for-each-ref --sort=committerdate refs/heads/ --format='%1B[0;33m%(authordate:short)%1B[0;31m %(refname:short)%1B[m | %(subject)' refs/heads"
alias gbr='git branch -r'
alias  gm='git merge'
alias gmf='git merge --no-ff --no-edit'
alias gom='git checkout master'
alias gos='git checkout staging'
alias gomm='git checkout origin/master -b master'
alias gmm='git merge master'
alias grm='git rebase master'
alias grs='git rebase staging'
alias  gr='git rebase --preserve-merges'
alias  gp='git push -u'
alias gpf='git push --force-with-lease'
alias  gt='git stash -u'
alias gta='git stash apply'
alias gca='git add -A . && git commit --amend --no-edit'
alias gcae='git commit --amend --no-edit'
alias grh='git reset HEAD'
alias grhh='git reset --hard HEAD'
alias  gla='git shortlog -ns' # Summary by author
alias  gbn="git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'" # current branch name
alias  gra='git rebase --abort'
alias  grc='git rebase --continue'
alias  gpr='git branch | cut -c 3- | grep -v master | xargs -L1 git branch -d 2> /dev/null' # Prune already merged local branches
alias  gwh='git branch -a | grep' # git which: which remote branch matches the regex
alias grpo='git remote prune origin'
alias   g!='git fetch && git rebase origin/master && gpr'

# shortens a Github URL
function gsh() { 
  url=$1
  anchor_split=($(echo $url |sed  's/\(#\)/\1 /g'))
  short=$(curl -i https://git.io -F "url=${anchor_split[0]}" 2>|/dev/null | awk '/^Location:/ { print $2 }' | sed -e 's/[[:cntrl:]]//')
  short_with_anchor="${short}#${anchor_split[1]}"
  echo $short_with_anchor | pbcopy
  echo $short_with_anchor
}