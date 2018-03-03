function asdf() {
  [[ "$(pwd)" != "$HOME" ]] || return

  local f="$(pwd)/.tool-versions"
  [[ -f "$f" ]] || return

  local versions=""

  # https://www.zsh.org/mla/users/2007/msg00288.html
  while read i
  do
    local v=${i/ /:}
    versions+="%F{176}$v%F{174}, "
  done < .tool-versions

  print -n "%F{174}[${versions[1,-3]}%F{174}] "
}
