#!/bin/zsh

echo "
---------------------------------------------------------
 __  __              _ ______ __  __  ____       _ _____ 
|  \/  |   /\       | |  ____|  \/  |/ __ \     | |_   _|
| \  / |  /  \      | | |__  | \  / | |  | |    | | | |  
| |\/| | / /\ \ _   | |  __| | |\/| | |  | |_   | | | |  
| |  | |/ ____ \ |__| | |____| |  | | |__| | |__| |_| |_ 
|_|  |_/_/    \_\____/|______|_|  |_|\____/ \____/|_____|
                                                                                                                            
🍎 Emojify your terminal.                                     
---------------------------------------------------------      
github: @catonmat                                                      
"

echo "
This install script will do two things: \n 
1. Copy the majemoji theme into your ~/.oh-my-zsh/themes folder. \n
2. Append your ~/.zshrc with the new theme.\n
Please enter y if you want to continue, otherwise hit n to cancel.\n
" 

echo -n "Enter either (y/n): " 
read RESPONSE

if [[ $RESPONSE == "y" || $RESPONSE == "Y" ]]; then
  # copy theme into ~/oh-my-zsh/themes
  echo "Copying theme file...\n"
  cp majemoji.zsh-theme ~/.oh-my-zsh/themes

  # append theme into ~/.zshrc
  echo "Appending theme into .zshrc...\n"
  # global regex to replace any existing ZSH_THEME with majemoji
  sed -ie 's/ZSH_THEME=.*$/ZSH_THEME="majemoji"/g' ~/.zshrc
  # if the theme already has ZSH_THEME then replace it
  echo "ZSH_THEME='majemoji'" >> ~/.zshrc
  # else append new theme to end of file

  echo "You are officially magically emojified 🧞 .AWESOME.\n\nLike the theme? Feel free to share the love 💝 on social media! https://github.com/catonmat/majemoji"
fi

if [[ $RESPONSE == "n" || $RESPONSE == "N" ]]; then
  echo "Operation cancelled!\n"
fi

