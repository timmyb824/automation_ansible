# Homebrew Role

This Ansible role installs and configures Homebrew and manages packages on macOS systems.

## Requirements

- Ansible 2.9 or higher
- macOS operating system

## Role Variables

```yaml
# Default state for Homebrew installation and packages
homebrew_state: present # Can be 'present' or 'absent'

# Mac App Store configuration
install_mas: false # Whether to install Mac App Store CLI
install_slack: false # Whether to install Slack from Mac App Store

# Gist base URL for package lists
gist_base_url: "https://gist.githubusercontent.com/timmyb824/807597f33b14eceeb26e4e6f81d45962/raw"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: homebrew
      homebrew_state: present
      install_mas: true
      install_slack: true
```

## Features

1. Installs Homebrew if not present
2. Configures PATH for both Intel and Apple Silicon Macs
3. Manages packages via Brewfile from gist
4. Supports Mac App Store installations via mas
5. Handles legacy command cleanup
6. Idempotent operations

## Package List

Packages are managed via a `Brewfile` in your gist. The format is:

```
package1
package2
# Comments are supported
package3
```

## Notes

- The role automatically detects the Mac architecture and sets up the appropriate PATH
- Mac App Store installations require being signed into the App Store
- Package installations are idempotent and will only install missing packages
