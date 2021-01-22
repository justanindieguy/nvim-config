"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
source $HOME/AppData/Local/nvim/general/settings.vim
source $HOME/AppData/Local/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/AppData/Local/nvim/vscode/settings.vim
else
  " source $HOME/AppData/Local/nvim/themes/material-palenight.vim
  source $HOME/AppData/Local/nvim/themes/gruvbox.vim
  source $HOME/AppData/Local/nvim/themes/airline.vim
  source $HOME/AppData/Local/nvim/plug-config/coc.vim
  source $HOME/AppData/Local/nvim/plug-config/signify.vim
  source $HOME/AppData/Local/nvim/plug-config/fzf.vim
  source $HOME/AppData/Local/nvim/plug-config/yats.vim
endif
