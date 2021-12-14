COLUMNS=0
while true
echo "Which environment do you want to open?"
do
	select env in "Kyle" "Monte" "Mario" "Greg" "Beta" "Test" "Prod" "Upgrade" "Vanilla"
	do
	    case $env in
	        Kyle )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-2a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Monte )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-2b.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Mario )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-2c.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Greg )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-2d.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Beta )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-test-1a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'

				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-test-1b.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Test )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-test-2a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Prod ) 
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-prod-2a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'

				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-prod-2b.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'

				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-prod-2c.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Upgrade )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-3a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        Vanilla )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@mobile-van.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	        All )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh kjnakamura@psmbl-dev-1a.fs.apu.edu"' 
				osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
				break;;
	    esac
	done
	echo ""
done
