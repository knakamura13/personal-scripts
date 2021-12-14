COLUMNS=0
while true
echo "Which project do you want to open?"
do
	select env in "Mobile-Kyle" "Mobile-Test" "Environment-Switcher" "Twitch-Bot" "APU-Mobile-iOS"
	do
		osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'

	    case $env in
			Mobile-Kyle )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@mobile-kyle.apu.edu"'
				break;;
			Mobile-Test )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@mobile-test.apu.edu"'
				break;;
			Environment-Switcher )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "bash ~/Documents/Development/scripts/environment_switcher.sh"'
				break;;
			Twitch-Bot )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "cd ~/Documents/Development/webstorm-projects/node-twitch-bot && npm start;"'
				break;;
			APU-Mobile-iOS )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "cd ~/Desktop/IMT/Projects/IMT-iOS/apu-mobile-ios"'
				break;;
	    esac
	done

    osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
	echo ""
done
