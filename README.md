# Vítor’s dotfiles

### Install everything
```
bash -c "$(curl -fsSL 'https://raw.github.com/vitorgalvao/dotfiles/master/install.sh')"
```

### Organisation
Although this repo is named `dotfiles`, it doesn’t actually contain any. Backup and restoration of those is handled by a separate app. What this repo consists of are a series of commands to fully automate setting up a new machine, as well as a few files to support those operations.

Everything is built to be modular. The most important parts of the repo’s file structure are:

```
.
├── install.sh
├── scripts
└── files
    └── post_install_script.sh
```

`scripts` is a directory that contains various shell scripts. However, none of them will actually do anything if ran on their own. They consist of nothing more than a lot of structured functions to perform various tasks.

`files` contains configurations that must be applied manually, files to support the installation scripts, and a special `post_install_script.sh` that should be called at some point after system setup is done.
`install.sh` is what brings it all together in an automated fashion. It loads up all the script functions and runs them sequentially.

All the script functions are organised sequentially and logically. Operations range from support to the installation as a whole (asking for details beforehand for future functions, moving `files` to a more visible location) to useful on their own, and this is where the modularity becomes useful.

If, say, we wish to [repeat the python setup process](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/01_environments.sh#L6), [update homebrew head apps](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/02_apps.sh#L20), or [reset default apps in a particular manner](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/03_configs.sh#L5), we need only source the appropriate scripts and run the respective functions, without worrying about the rest.

This allows for a flexible setup, where we need only make sure the functions meant for system setup are up to date. Those we need to run occasionally, even after the system has been setup, can be built around the setup scripts, loading and executing the appropriate commands.

#### License
The Unlicense (Public Domain, essentially)
