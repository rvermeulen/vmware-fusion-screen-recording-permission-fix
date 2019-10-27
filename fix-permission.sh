#!/bin/bash
set -e

sudo mv /Applications/VMware\ Fusion.app/Contents/MacOS/VMWare\ Fusion /Applications/VMware\ Fusion.app/Contents/MacOS/_VMWare\ Fusion
sudo cp inject.dylib /Applications/VMware\ Fusion.app/Contents/MacOS/

(
cat <<'HEREDOC'
#!/bin/bash
DYLD_INSERT_LIBRARIES=/Applications/VMware\ Fusion.app/Contents/MacOS/inject.dylib /Applications/VMware\ Fusion.app/Contents/MacOS/_VMWare\ Fusion
HEREDOC
) | sudo tee /Applications/VMware\ Fusion.app/Contents/MacOS/VMWare\ Fusion
sudo chmod +x /Applications/VMware\ Fusion.app/Contents/MacOS/VMWare\ Fusion

echo "Now open VMWare Fusion to get the Screen Capture prompt, and close VMWare Fusion to start cleanup"

read -n 1 -s -r -p "Press any key to clean up"
sudo mv /Applications/VMware\ Fusion.app/Contents/MacOS/_VMWare\ Fusion /Applications/VMware\ Fusion.app/Contents/MacOS/VMWare\ Fusion
sudo rm /Applications/VMware\ Fusion.app/Contents/MacOS/inject.dylib
