# Dotfiles

## Manual Steps

Assumes starting with a fresh OSX install

- Run `bin/ssh_key_generation` & paste new SSH pubkey to Github
- Clone dotfiles repository
- Run `bin/install`

### Security stuff
- Set up 1password vaults via icloud and dropbox
- Transfer GPG keys
  - See https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/backup-or-transfer-your-keys
- App store: update w/ latest security patches
- Security preferences
  - General
    - Require password after 5min
    - Disable auto-login
    - Set lock screen message with contact info
  - Firewall: Turn on
  - FileVault: Turn on

### GUI app preferences
- Download Dash license (search email for link)
- Dock: delete almost everything, move it to the left, and auto-hide it
- Mjolnir: in Security & Privacy settings -> Privacy -> Accessibility -> allow Mjolnir control
- Keyboard (System Preferences -> Keyboard):
  - Remap caps lock to control (Keyboard -> Modifier Keys)
  - Allow tabbing to all controls (Shortcuts -> Full Keyboard Access)
- Trackpad
  - More Gestures -> Turn off Swipe between Pages
- iTerm2:
  - Preferences -> Profiles -> Keys -> Remap left option to +Esc
  - Preferences -> Profiles -> Colors -> Color Preset to Pastel (Dark Background)
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
