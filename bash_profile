export EDITOR=vim
export VISUAL=vim
export PS1='\u@\h \w $ '

alias _docker_run='docker run -v $HOME/.vimrc:/root/.vimrc'
alias _docker_run_aws='_docker_run -v $HOME/.aws:/root/.aws'
alias aws-shell='_docker_run_aws -ti --rm pahud/aws-shell'
alias py-boto='_docker_run_aws -v $PWD:/root/dev:rw -ti --rm jpbarto/boto3'
alias boto-dev='_docker_run_aws -v $PWD:/root/dev:rw -ti --rm jpbarto/boto3 sh'
alias ghci='_docker_run -ti --rm jpbarto/ghci'
alias ghci-dev='_docker_run -v $PWD:/root/dev:rw -ti --rm jpbarto/ghci bash'
alias redis-cli='_docker_run --rm -ti redis redis-cli'

# Add GHC 7.8.4 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/GHC.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

. ~/.bashrc
