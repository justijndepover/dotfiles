COMPUTER_NAME="Macbook Justijn"

osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

############################################################
# Default                                                  #
############################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$COMPUTER_NAME"
sudo scutil --set HostName "$COMPUTER_NAME"
# sudo scutil --set LocalHostName "$COMPUTER_NAME"

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Brussels" > /dev/null

############################################################
# Menubar                                                  #
############################################################

# show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

############################################################
# Finder                                                   #
############################################################

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Hide status bar
defaults write com.apple.finder ShowStatusBar -bool false

# Hide path bar
defaults write com.apple.finder ShowPathbar -bool false

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle icnf

# Show the ~/Library folder
chflags nohidden ~/Library

############################################################
# Dock                                                     #
############################################################

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Disable hot corners
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

# Don't show recently used applications in the Dock
defaults write com.Apple.Dock show-recents -bool false

# Enable maginification
defaults write com.apple.dock magnification -bool true

# Set maginification to maximum
defaults write com.apple.dock largesize -int 128

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Set the Dock animation speed
defaults write com.apple.dock autohide-time-modifier -float 0.3

############################################################
# Keyboard and mouse                                       #
############################################################

# enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

###############################################################################
# Applications                                                                #
###############################################################################

# iTerm: disable resize in increments of character widths
defaults write com.googlecode.iterm2 DisableWindowSizeSnap -integer 1
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${DOTFILES}/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" "Finder" "Safari"  "SystemUIServer"; do
  killall "${app}" &> /dev/null
done
