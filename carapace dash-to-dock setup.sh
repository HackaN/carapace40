#!/bin/bash
clear
while true; do
	read -p "
	
	Hello, I am stardust. I am a script written for your
	convenience - let's make sure that dash is setup
	the right way! All the tweaks we do here are accessible from the Dash to Dock
	settings.
	
	We will only setup the visuals for now, the behaviour of the dash is for you
	to tweak.
			
		Cool? (y/n) " yn
	case $yn in
		[Yy]* ) echo; echo "
		Great, let's do it!"; echo; break;;
		[Nn]* ) echo; echo "
		... ok, you were supposed to hit Y :-/"; echo; exit;;
		* ) echo; echo "
		! You must answer something I understand...  - Y or N"; echo;;
	esac

done


echo "
	--------------------------------| Tweaking |--------------------------------
	"
gsettings set org.gnome.shell.extensions.user-theme name 'carapace40'
echo "	→ Setting user theme to Carapace"
gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
echo "	→ Deactivate built in theme"
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
echo "	→ Shrink the Dash"
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
echo "	→ No panel mode"
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode 'FOCUS_APPLICATION_WINDOWS'
echo "	→ Only hide when needed"
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
echo "	→ Nobody likes super-small icons you can't see"
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DEFAULT'
echo "	→ Carapace indicators which get wider the more application windows are open"
echo "
	-----------------------------------------------------------------------------
	
	
	
	"
	
	while true; do
	read -p "
	
	If you are using Ubuntu Dock ( which you propably are if you didn't manually install dash-to-dock in Ubuntu) we need to allow the dock to have a custom theme.
	If you are running dash-to-dock just press N here.
	
	Setup Ubuntu Dock? (y/n) " yn
	case $yn in
		[Yy]* ) echo; echo "
		Here we go..."; echo; break;;
		[Nn]* ) echo; echo "
			That's it. The dash should look awesome now.
			Enjoy this version of Carapace :-)"; echo; exit;;
		* ) echo; echo "
		! You must answer something I understand...  - Y or N"; echo;;
	esac

done
	
gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme true
echo "	→ Applying custom theme"

echo "
	That's it. The dash should look awesome now.
	Enjoy this version of Carapace :-)
	"
