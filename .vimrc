syntax on "syntaxhighlighting einschalten
set number "zeilennummerierung
set hlsearch "suchergebnisse highlighten -> :nohls

"code ein-/ausklappen
set foldmethod=indent
set foldnestmax=1
set nofoldenable
set foldlevel=1

"set t_Co=256
"colorscheme xoria256
set ts=4

"neue kommandos einführem falls man die shifttaste noch gedrückt hält und sie dennoch erkannt werden
command WQ wq
command Wq wq
command W w
command Q q

set viminfo='20,\"100000

set encoding=utf-8
set fileencoding=utf-8
