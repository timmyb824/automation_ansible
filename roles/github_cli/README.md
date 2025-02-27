# GitHub CLI Role

This Ansible role installs and configures GitHub CLI (gh) and its extensions.

## Requirements

- Ansible 2.9 or higher
- One of the following package managers:
  - Homebrew (for macOS)
  - pkgx (for Linux)

## Dependencies

This role depends on:
- `homebrew` role (for macOS)
- `pkgx` role (for Linux)

These dependencies will be automatically installed when using this role.

## Role Variables

```yaml
# Default state for GitHub CLI installation
gh_cli_state: present # Can be 'present' or 'absent'

# Extensions configuration
gh_extensions_state: latest # Can be 'present' or 'latest'

# GitHub token (should be vaulted)
github_token: your-token-here
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: github_cli
      gh_cli_state: present
      gh_extensions_state: latest
```

## Features

1. OS-specific installation via Homebrew or pkgx
2. GitHub authentication using token
3. Extension management from a centralized list
4. Support for extension updates
5. Secure token handling via Ansible vault

## Extension List

Extensions are managed via a `gh_cli.list` file in your gist. The format is:

```
extension1
extension2
# Comments are supported
extension3
```

## Notes

- The GitHub token should be stored securely using Ansible vault
- Extensions can be updated automatically when gh_extensions_state is 'latest'
- The role automatically handles dependencies through the homebrew and pkgx roles
