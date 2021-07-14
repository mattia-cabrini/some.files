# some.files
Here I collect some of my personal .files

## Doom Emacs
Dot folder `.doom.d` is the configuration folder for [Doom Emacs](https://github.com/hlissner/doom-emacs).

## VIm
Dot folder `.vim` is the configuration folder for [VIm](https://www.vim.org/). 

### Dependencies

* [Dracula Theme](https://draculatheme.com/).

## BASH and ZSH

> Since shell configurations are very similar, I will not refer to .bashrc, .zsh_env or so, but to `.*shrc` or `.*sh_aliases` or so.

The configurations of BASH and ZSH are similar. Both of them defines an extractor function `ex()` which is useful to extract different kind of archives. This function relies on the following commands:

* tar;
* bunzip2
* unrar;
* gunzip;
* unzip;
* uncompress;
* 7z.

These commands do not have to be all installed on your system. You could install only the one ones you need without changing the `.*shrc` file.

The `.*shrc` file is instructed to include the following files:

* `~/.*sh_aliases`: a file in which the user can insert additional aliases without changing the `.*shrc` file;
* `~/.*sh_env`: a file in which the user is supposed to insert the environment variables or exports without changing the `.*shrc` file.

The prompt (PS1 for bash and PROMPT for zsh) is different.

### Dependencies

The following packets are required:

* [neofetch](https://github.com/dylanaraps/neofetch): if you don't like `neofetch` or simply you don't want to run it at shell start, comment the line `eval neofetch` in the `.*shrc` file.

## Awesome

Awesome Windows Manager configuration includes the self-launch of Konsole, Nitrogen (for background) and Compton. It is also configures Dmenu as launcher. VIm has been configured as the default editor, Alaccrity, as the default console.

### Dependencies

This configuration relies on the following packets:

* [VIm](ihttps://www.vim.org/);
* [Alacritty](https://github.com/alacritty/alacritty);
* [Dmenu](http://git.suckless.org/dmenu/);
* [Compton](https://github.com/chjj/compton);
* [Nitrogen](https://github.com/l3ib/nitrogen/);
