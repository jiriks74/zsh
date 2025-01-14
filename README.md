# THIS REPOSITORY MOVED TO https://gitea.stefka.eu/jiriks74/zsh

## To migrate your current repository to the new one:

```bash
cd ~/zsh
git remote set-url origin https://gitea.stefka.eu/jiriks74/zsh
```

# ZSH
My ZSH config

## Your own customizations

If you want to make any customizations to your config without deleting them,
or merging them, every time I update, here's the solution:
  - Make a file called `custom-zshrc` in your `$HOME/zsh` directory
  - Put your customizations in that file
The file is in `.gitignore`, so it won't interfere with the repository and you
can pull updates without resolving differences between local files and the repository.
It is also set to be sourced in the `zshrc` file, so you really don't have to
set up anything, just add the customizations.

## Setup

- Clone the repository to your home folder

```bash
cd ~
git clone --recursive https://github.com/jiriks74/zsh
```

- Link the `zsh` file to your home folder as `.zshrc`

```bash
ln -s ~/zsh/zshrc ~/.zshrc
```

- Set the `powerlevel10k` theme the way you like it

```bash
zsh
```

- If configuration won't start automatically, just run

```bash
p10k config
```

- Set `zsh` as your default shell

### There are two ways

#### Running `chsh`

```bash
chsch $USER
```

- Input your password
- Input `/bin/zsh`

#### Modifying `/etc/passwd`

- Change your user in `/etc/passwd` to `/bin/zsh` instead of `/bin/bash`

<details>

- Find line containing your username
- Change the end of the line

From: ...`:/bin/bash`

To:   ...`:/bin/zsh`
</details>

## Updating

```bash
cd ~/zsh
git pull --recurse-submodules
git submodule update --init --recursive
```

### Problems with updating (this will delete any customizations you have made in `~/zsh`)

- If you get `fatal: refusing to merge unrelated histories` you have changes in
`~zsh` that are not in the repository
- If you have backed up your customizations (if you have any) this will delete
all differences between `~/zsh` and the repository

```bash
cd ~/zsh
git fetch
git reset --hard origin/master
```

## Get Dependencies

### Included in this repository

- [`zsh-z`](https://github.com/agkozak/zsh-z) - ZSH plugin that is alternative to
`autojump`. Use `z dirname`to go to a specific directory on your system without
having to type the whole path (eg `z et` will get you to `/etc`)
- [`dirhistory`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory) -
Plugin from oh my zsh that allows you to easily go through history of directories
(due to this not being a repository I have to update this plugin manually.
If it's out of date, please create an issue)
- [`ssh-connect`](https://github.com/gko/ssh-connect) - Plugin that logs your
`ssh` commands and provides a nice menu with your recent connections (alias: `sshc`)
- [`web-search`](https://github.com/sineto/web-search) - Allows you to DuckDuckGo,
Google, etc. directly from your zsh. just run `ddg` or `google`
- [`zsh-you-should-use`](https://github.com/MichaelAquilina/zsh-you-should-use) -
Usefull plugin that suggest existing aliases for a command you just ran
(try it out with `ls -l`)
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions) -
Suggestions based on your history
- [`git`](https://github.com/davidde/git) - Usefull git aliases
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) -
Syntax highlighting for ZSH
- [`powerlevel10k`](https://github.com/romkatv/powerlevel10k) theme -
The the actual theme

### Install from your distribution's repository

- [`thefuck`](https://github.com/nvbn/thefuck) - Corrects errors in previous
console commands (when you mess up a command, type `fuck`)

### Recomended for `powerlevel10k`

- [`nerd-fonts`](https://github.com/ryanoasis/nerd-fonts "nerd-fonts github page") -
I recomend `MesloLGS NF Regular`
  - On Arch you can use `ttf-meslo-nerd-font-powerlevel10k` so you don't have to
  donwload the whole git repository¨¨
