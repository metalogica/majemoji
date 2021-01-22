#!zsh

echo "
---------------------------------------------------------

__  __              _ ______ __  __  ____       _ _____ 
|  \/  |   /\       | |  ____|  \/  |/ __ \     | |_   _|
| \  / |  /  \      | | |__  | \  / | |  | |    | | | |  
| |\/| | / /\ \ _   | |  __| | |\/| | |  | |_   | | | |  
| |  | |/ ____ \ |__| | |____| |  | | |__| | |__| |_| |_ 
|_|  |_/_/    \_\____/|______|_|  |_|\____/ \____/|_____|
                                                          
github: @catonmat                                        
---------------------------------------------------------
Emojis in your command prompt. Grand.                                                        
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
  cp majemoji.zsh-theme ~/oh-my-zsh/themes

  # append theme into ~/.zshrc
  echo "Appending theme into .zshrc...\n"
  echo "ZSH_THEME='majemoji'" >> ./test/zshrc

  echo "Done!\n"
fi

if [[ $RESPONSE == "n" || $RESPONSE == "N" ]]; then
  echo "Operation cancelled!\n"
fi

