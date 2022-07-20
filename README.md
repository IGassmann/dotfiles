# IGassmann's Dotfiles

This is greatly inspired from [Dries Vints](https://github.com/driesvints/dotfiles)'s and [Christoph Rumpel](https://github.com/christophrumpel/dotfiles) dotfiles.

## Backup Checklist

- Did you commit and push any changes/branches to your git repositories?
- Did you copy your .env files to a safe place if they are not casual?
- Did you backup local databases you need?
- Did you remember to save all important documents from non-cloud directories?
- Did you export and saved any cryptocurrency wallet?
- Did you export and saved your GPG keys?
- Did you save a list of your installed Setapp apps?
- Did you save a list of apps that need to be installed manually?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?
- Did you backup all your files with Backblaze?

## Installation

1. Update macOS to the latest version
2. Clone this repo to ~/.dotfiles with:
    ```zsh
    git clone git@github.com:IGassmann/dotfiles.git ~/.dotfiles
    ``` 
3. Run bootstrap script
    ```zsh
    ~/.dotfiles/bootstrap.sh
    ```
4. After mackup files is synced on iCloud Drive, restore preferences by running `mackup restore`
5. Set up [1Password SSH Agent](https://developer.1password.com/docs/ssh/agent)
6. Clone repositories to `~/Repositories/`
   ```zsh
    ~/.dotfiles/clone_repos.sh
    ```
7. Install Yarn global packages
	```zsh
    yarn global install
    ``` 
8. Restart your computer to finalize the process

## Additional Steps

- Install Setapp favorited apps
- Install apps manually
    - Logi Options+
    - Rize
    - Amphetamine Enhancer
- Import GPG keys
- Import cryptocurrency wallets