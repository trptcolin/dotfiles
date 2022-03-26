# Dotfiles

## Manual Steps

Assumes starting with a fresh OSX install

- Get 1password:
  - `bin/get_1password`
- Run `bin/ssh_key_generation` & paste new SSH pubkey to Github
- Clone dotfiles repository
- Run `bin/install`
- Run `bin/symlinks`

### Security stuff
- Set up 1password
- App store: update w/ latest security patches
  - Allow an hour!
- Security preferences
  - General
    - Require password after 5min
    - Disable auto-login
    - Set lock screen message with contact info
  - FileVault: Turn on (allow 30 minutes!)
  - Firewall: Turn on

### GUI app preferences
- Download Dash license (search email for link)
- Dock: delete almost everything, move it to the left, and auto-hide it
- Keyboard (System Preferences -> Keyboard):
  - Remap caps lock to control (Keyboard -> Modifier Keys)
  - Allow tabbing to all controls (Shortcuts -> Full Keyboard Access)
- Finder
  - General
    - Show ~everything on the desktop
    - New Finder windows show: home folder
  - Sidebar: remove All My Files, add ~all under Devices, remove all Tags
  - Advanced: Show all filename extensions, don't warn on extension change
- Trackpad
  - More Gestures -> Turn off Swipe between Pages
- iTerm2:
  - Preferences -> Profiles -> Keys -> Remap left option to +Esc
  - Preferences -> Profiles -> Colors -> Color Preset to Pastel (Dark Background)
  - Preferences -> Profiles -> Terminal -> Silence Bell
  - Respect boundaries (Edit -> Selection Respects Soft Boundaries)
- FaceTime: Uncheck Calls from iPhone
- iMessages: Sign out of account
- Chrome:
  - sign into 2 profiles (personal & work)
  - Chrome menu -> Warn Before Quitting
  - Preferences -> Advanced
    - Uncheck Use a web service to resolve navigation errors
    - Uncheck Offer to save your web passwords
  - chrome://flags -> disable QUIC
