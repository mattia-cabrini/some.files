# Some Dot Files
In this repository I collect some of my personal .files.

## Shell(s)
I use bash on Lunux and zsh on MacOS, therefore I have and RC for both of them. Their design are similar: they define a prompt and some simple functions and include:

- `~/.*sh_aliases`: a file in which the user can insert additional aliases without changing the RC file. Additional aliases are not included for non-interactive shells;
- `~/.*sh_env`: a file in which the user is supposed to insert the environment variables or exports without changing the RC file. Since every system is different, the file is not included in the repository.

### Dependencies

#### Extractor
Both zsh and bash RCs define a common extractor shell function that relies upon the following programs:

-  [tar](https://www.gnu.org/savannah-checkouts/gnu/tar/manual/tar.html);
-  [bunzip2](https://gitlab.com/bzip2/bzip2/);
-  [unrar](https://www.win-rar.com/);
-  [gunzip](https://www.gnu.org/software/gzip/);
-  [unzip](http://www.info-zip.org/UnZip.html);
-  [uncompress](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/uncompress.html#);
-  [7z](https://www.7-zip.org/).

#### Other
- [neofetch](https://github.com/dylanaraps/neofetch): For no particular reason I like to run neofetch when I start the shell. You can disable this behavior by remove the lines

```sh
eval clear
eval neofetch
```
  in the RC file(s).

- [exa](https://the.exa.website/): A replacement for `ls`.

## Window Manager
I like i3, there must be a reason?

Anyway, the i3 configuration file is quite simple. In it I defined very few keybindings to start the browser, my IDE (I use Neovim, btw) and some other stuff. Nothing exoterical, but be aware that that configuration relies on some dependencies:

-   [Picom](https://github.com/yshui/picom);
-   [VolumeIcom](https://github.com/Maato/volumeicon);
-   [Neovim](https://neovim.io/);
-   [Firefox](https://www.mozilla.org/it/firefox/);
-   [Chromium](https://www.chromium.org);
-   [VS Code](https://code.visualstudio.com/).
-   [Alacritty](https://github.com/alacritty/alacritty);
-   [Dolphin](https://apps.kde.org/dolphin/);
-   [feh](https://github.com/derf/feh);
-   KDE: yes, I know, I'm going to get rid of that ASAP.

## Neovim
The Neovim configuration is based on [NvChad](https://github.com/NvChad/NvChad).

