# Zsh Role

This Ansible role installs Zsh and sets it as the default shell for the specified user.

## Requirements

- Ansible 2.9 or higher
- Root/sudo access on target hosts

## Role Variables

```yaml
# Default state for Zsh installation
zsh_state: present # Use 'absent' to remove
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: zsh
      zsh_state: present
```

## Features

1. Checks if Zsh is already installed
2. Installs Zsh if not present
3. Changes the default shell to Zsh if not already set
4. Works on both Debian/Ubuntu and other Linux distributions
5. Uses package manager appropriate for the OS

## Platform Support

- Debian/Ubuntu (apt)
- Other Linux distributions (generic package manager)

## Notes

- The role will only change the shell if Zsh is not already the default
- Uses the ansible_user_id variable to determine which user to modify
- Requires sudo/become privileges for installation and shell change
