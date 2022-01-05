bold(){
  echo "\033[1;37;48m${@}";
}
bold_blue(){
  echo "\033[1;34;48m${@}";
}
bold_cyan(){
  echo "\033[1;36;48m${@}";
}
bold_green(){
  echo "\033[1;32;48m${@}";
}
bold_grey(){
  echo "\033[1;30;48m${@}";
}
bold_red(){
  echo "\033[1;31;48m${@}";
}
bold_yellow(){
  echo "\033[1;33;48m${@}";
}
blue(){
  echo "\033[0;34;48m${@}";
}
cyan(){
  echo "\033[0;36;48m${@}";
}
green(){
  echo "\033[0;32;48m${@}";
}
grey(){
  echo "\033[0;37;48m${@}";
}
red(){
  echo "\033[0;31;48m${@}";
}
yellow(){
  echo "\033[0;33;48m${@}";
}
header(){
  echo "\033[35m${@}";
}
underline(){
  echo "\033[4m${@}";
}
white(){
  echo "\033[0m";
}
