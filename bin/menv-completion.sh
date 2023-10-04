#!/usr/bin/env bash

function __menv-completion() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD - 1]}"
  opts="active delete edit editopts help idea mvnlocal init list new profile rmidea version"

  if [[ ${COMP_CWORD} -eq 1 ]]; then
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
    return 0
  fi

  case "${prev}" in
  edit | editopts | profile)
    COMPREPLY=($(compgen -W "$(find "${HOME}/.menv/" -maxdepth 1 -regex '.*/settings\.xml.*' | sort | sed "s/^.*settings.xml.//g")" -- "${cur}"))
    return 0
    ;;
  *)
    return 0
    ;;
  esac
}

complete -F __menv-completion menv
