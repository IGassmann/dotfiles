# IGassmann's Dotfiles

IGassmann's macOS configuration with Brewfile, Mackup, and repository management

## Backup Checklist

- Did you commit and push any changes/branches to your git repositories?
- Did you copy your .env files to a safe place if they are not casual?
- Did you backup local databases you need?
- Did you remember to save all important documents from non-cloud directories?
- Did you export and saved any cryptocurrency wallet?
- Did you export and saved your GPG keys?
- Did you export and saved Raycast preferences?
- Did you mark your installed Setapp apps as favorites?
- Did you save a list of apps that need to be installed manually?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?
- Did you backup all your files with Backblaze?

## Installation

1. Update macOS to the latest version
2. Clone this repo to `~/.dotfiles` with (you will be asked to download XCode command line tools):
    ```zsh
    git clone https://github.com/IGassmann/dotfiles.git ~/.dotfiles
    ``` 
3. Run bootstrap script
    ```zsh
    ~/.dotfiles/bootstrap.sh
    ```
4. Sync Mackup files on the iCloud Drive and restore preferences by running `/opt/homebrew/bin/mackup restore`
5. Set up [1Password SSH Agent](https://developer.1password.com/docs/ssh/get-started#step-3-turn-on-the-1password-ssh-agent)
6. Clone repositories to `~/Repositories/`
   ```zsh
    ~/.dotfiles/clone_repos.sh
    ```
7. Set up Node.js with [nodenv](https://github.com/nodenv/nodenv)
8. Install Yarn global packages
	```zsh
    yarn global add actions-cli all-the-package-names dts-gen install-peerdeps node-dev ts-node ts-node-dev vercel
    ``` 
9. Import GPG keys
10. Sync WebStorm settings
11. Sync Google Chrome preferences
12. Import Raycast preferences
13. Install Setapp apps that are in favorites
14. Import cryptocurrency wallets
15. Install following apps manually
    - Logi Options+
    - Rize
    - Amphetamine Enhancer
16. Sign into Slack workspaces
17. Restart your computer to finalize the process
