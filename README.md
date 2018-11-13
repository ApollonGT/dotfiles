# Dotfiles

This repository contains my personal configuration files (\*rc) for:

* Bash
* Fish Shell
* Tmux
* Vim

### Requirements

Obviously the software itself (Bash, Fish, Tmux, Vim)

* For Vim plugins
    * NodeJS (npm) for the installation of instant markdown preview server 
    [instant-markdown-d](https://github.com/suan/instant-markdown-d)

### Usage

* inputrc: Just copy the content of `.inputrc` in your `~/.inputrc` file (create if missing)
* bashrc: Just copy the content of `bash/bashrc` in your `~/.bashrc` file 
            if you want to have a pretty bash prompt.
* Fish shell: add the content of `fish/config.fish` in your `~/.config/fish/config.fish` 
                if you want to start `tmux` on fish startup.
* Replace your `~/.tmux.conf` with my `tmux/.tmux.conf` if you want to have my tmux configuraton.
* Vim: just `cd` into `vim` folder and run `./install_vimrc.sh`. This will install the required 
    libraries and then replace the `~/.vimrc` with my configuration. When you start Vim afterwards 
    don't forget to run `:PlugInstall` so th eplugins are installed. To restore your vim configuration
    run `./restore_vimrc.sh`.

### What is included

#### Vim

* Source the vimrc after saving changes so you don't have to restart your vim.
* Show line numbers.
* Don't wrap text.
* Switch buffers without the need to save.
* Maintain undo history even when the vim is closed.
* Set leader to `,`.
* Mark the 81th and 110th columns.
* Toggle relative numbering with `Ctrl + n`.
* Show open buffers and wait to pick one (using it's number) with `Ctrl + b`.
* Tab is 4 spaces.
* Autoindent code.
* install plugins (using Plug):
    * CtrlP (fast file searching)
    * Vim Surround
    * GitGutter (Show changes for each line)
    * DelimitMate (Auto close quotes, parentheses, etc)
    * Indentline (Show indentation)
    * Autotag (autoupdate ctags)
    * NerdTree (Folder Tree View)
    * Gotham (theme)
    * Instant Markdown (Service for live markdown preview)
    * Trailing whitespaces (Highlight whitespaces)
    * Python Mode
    * VueJS Syntax Highlight
    * Script Runner (\<F5\>)
    * Fugitive (\<leader\>g for blame) ([Tutorials](https://vimawesome.com/plugin/fugitive-vim))
    * [Emmet.io](https://emmet.io) plugin ([Tutorial](https://github.com/mattn/emmet-vim/blob/master/TUTORIAL.mkd))
    * [Deoplete](https://github.com/Shougo/deoplete.nvim) as auto completor. (**Important**: Vim needs to have python3 support.)
* In case of Fish Shell it fixes some misfunctionalities.
* Pane resize: Ctrl+[h,j,k,l]

#### Tmux

* `Ctrl-b` &rarr; `Ctrl-a`
* Pane and Window index starting from 1
* Split Panes with `Ctrl+|` or `Ctrl+-`
* New windows are in current path
* `Ctrl+r` Reloads the configuration file
* `Alt+arrows` Switch Panes
* `Alt+[hjk]` Resize Panes
* Blue colors
