COLUMNS=0
while true
echo 'Which project do you want to open?'
do
	select proj in 'cp' 'nano'
	do
		osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'

	    case $proj in
			cp )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "cd ~/local-documents/local-development/omscs/cs6475-cp"'
				break;;
			nano )
				osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh nano"'
				break;;
	    esac
	done

    osascript -e 'tell application "System Events" to tell process "iTerm" to key code 52'
	echo
done
