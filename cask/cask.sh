brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
        brew cask install "${@}" 2> /dev/null
}

installcask sublime-text
installcask onepassword
installcask dropbox
installcask charles
installcask instacast
installcask hipchat
installcask adium
installcask alfred
installcask launchbar
installcask caffeine
installcask kaleidoscope
installcask mou
installcask omnidisksweeper
installcask plex-media-server
installcask sequel-pro
installcask sonos
installcask sourcetree
installcask spotify
installcask transmission
installcask transit
installcask unrarx
installcask vlc
installcask vox
installcask ynab
installcask authy-bluetooth
installcask nvalt

brew tap caskroom/versions
brew cask install intellij-idea-ultimate12
