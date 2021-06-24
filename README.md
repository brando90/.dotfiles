# Brando's dotfiles

## Install

TODO

- check pedro's code: https://github.com/pcattori/dotfiles

##

To edit hammerspoon file do it through their interface


## Emacs & Proof General

see: https://superuser.com/questions/771442/configuring-proof-general-for-coq-in-emacs/1658596#1658596
Also, see my: https://github.com/brando90/coq4brando

general comments:

- note if you copy `(require 'package)` multiple times it causes errors becuase it is not an indepodent op
- it seems that you do not need to set the coqtop path explicitly if you use PG - PG finds it on its own
  - I think it's because I installed it with opam but I am not 100%
