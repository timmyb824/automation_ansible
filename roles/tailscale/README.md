# Tailscale Role

This Ansible role installs and configures Tailscale on both macOS and Linux systems.

## Requirements

### macOS

- Homebrew must be installed
- Mac App Store account must be configured (for `mas` CLI)

### Linux

- `curl` must be installed
- One of the following package managers:
  - apt (Debian/Ubuntu)
  - dnf (RedHat/CentOS)
  - zypper (SUSE)

## Role Variables

```yaml
# Default state for installation
tailscale_state: present # Use 'absent' to remove

# Tailscale configuration
tailscale_accept_routes: true
tailscale_operator: "{{ ansible_user_id }}"
tailscale_authkey: "your-auth-key" # Optional, if not provided manual authentication is required

# macOS specific
mas_cli_state: present
tailscale_mas_id: 1475387142 # Mac App Store ID for Tailscale

# Linux specific
tailscale_repo_url: "https://pkgs.tailscale.com/stable"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: tailscale
      tailscale_state: present
      tailscale_authkey: "tskey-auth-xxxxx" # Optional
```

## Platform-specific Notes

### macOS

- Installation is done through the Mac App Store using `mas`
- After installation, manual setup through the GUI is required
- Uninstallation must be done manually through the Applications folder

### Linux

- Installation uses the official Tailscale repositories
- Can be fully automated if `tailscale_authkey` is provided
- Supports automatic start and authentication
- Full uninstallation including repository cleanup

## Post-Installation

### macOS

1. Launch Tailscale from the Applications folder
2. Complete the authentication process through the GUI

### Linux

If `tailscale_authkey` was not provided:

1. Run `sudo tailscale up` manually
2. Follow the authentication URL provided
