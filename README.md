```sh
---------------------------------------------------------
 __  __              _ ______ __  __  ____       _ _____ 
|  \/  |   /\       | |  ____|  \/  |/ __ \     | |_   _|
| \  / |  /  \      | | |__  | \  / | |  | |    | | | |  
| |\/| | / /\ \ _   | |  __| | |\/| | |  | |_   | | | |  
| |  | |/ ____ \ |__| | |____| |  | | |__| | |__| |_| |_ 
|_|  |_/_/    \_\____/|______|_|  |_|\____/ \____/|_____|
                                                                                                                            
🍎 Emojify your terminal.                                     
---------------------------------------------------------                                                                     
```

<img src="http://g.recordit.co/Wjoy1k2yvT.gif"/>

## Installation
💡 The install script will do two things: 
* 1. Copy the majemoji code into your `oh-my-zsh directory`.
* 2. Modify your `ZSH_THEME` variable in your `zshrc` file. 

### Automatic install
🌈 Copy and paste the code below into your terminal in one thic chunk and bam you're ready to go!
```
curl -s https://raw.githubusercontent.com/catonmat/majemoji/master/majemoji.zsh-theme >> majemoji.zsh-theme && \
curl -s https://raw.githubusercontent.com/catonmat/majemoji/master/install.sh > install.sh && \
sh install.sh && rm install.sh && rm majemoji.zsh-theme && zsh
```

### Manual Install
```shell
# clone the repo
git clone [majemoji_repo_url]

# move into the directory
cd majemoji

# I encourage you to double check contents of the install script to ensure you are happy to run it! It's very simple and straightforward.
cat install.sh

# run the install!
sh install.sh

# reboot your Zsh in the terminal to see majemoji Action!!!
zsh
```

The automatic install script assumes two things: 
* The path of your `oh-my-zsh directory` is `~./oh-my-zsh directory`.
* The path of your `zshrc` file is `~/.zshrc`.
* You are willing to prefix the install script with `sudo` as you'll be moving files inside your `~` directory.

If any of the three points above are not true for you, then you'll have to manually move the files.
* Manually copy and paste the `majemoji.zsh-theme` file into your `oh-my-zsh directory`.
* Copy and paste `ZSH_THEME=majemoji` to the bottom of your `~/.zshrc` file.
* Reboot your Zsh session by running the command: `zsh`.

## Contributing
🧠 Welcoming any ideas and suggestions for improvement! 
