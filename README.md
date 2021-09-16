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

### Aliases

In `.*sh_aliases`, both for bash and zsh, the following aliases are defined:

> Only the main ones are reported, see `.*sh_aliases` for the complete list.

Alias|Command|Description
:-:|:-|:-
`cp`|`cp -i`|To prevent file override
`more`|`less`|To not use `more`
`ls`|`ls --group-directories-first`|Self explanatory: it groups directories before files
`la`|`ls --group-directories-first -a`|Like the previous, but shows also hidden files
`git.s`|`git status`|To use only if you know [git](https://git-scm.com/)
`git.p`|`git push`|To use only if you know [git](https://git-scm.com/)
`git.c`|`git commit`|To use only if you know [git](https://git-scm.com/)
`git.m`|`git commit -m`|To use only if you know [git](https://git-scm.com/)

### Directories

For both bash and zsh, a few aliases has been defined for the `cd` command. Here an example of what you can do:

```sh
# Move to parent directory, cd ..
..
```

#### Bash Experimental

For bash, and only bash, I added a functionality to be able to track all the directory visited during a session. The list is shown by

```sh
# Show the list of directory visited during the session
up
```

**Example**:

```sh
$ cd apache2
$ cd extra
$ ..
$ up
0 /etc
1 /etc/apache2
2 /etc/apache2/extra
$ 
```

By running `up n`, the user changes directory moving to the entry #n of the list:

**Example**, given the previous list:

```sh
# Move to /etc
$ up 0
```

**WARNING**: this functionality is experimental.

### Dependencies

The following packets are required:

* [neofetch](https://github.com/dylanaraps/neofetch): if you don't like `neofetch` or simply you don't want to run it at shell start, comment the line `eval neofetch` in the `.*shrc` file.
