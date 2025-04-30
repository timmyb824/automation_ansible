# Micro Plugins Role

This Ansible role manages Micro editor plugins across different operating systems.

## Requirements

- Ansible 2.9 or higher

## Dependencies

This role depends on:

- `homebrew` role (for macOS)
- `apt_packages` role (for Linux)

These dependencies will be automatically installed when using this role.

## Role Variables

```yaml
# Default state for Micro plugins
micro_plugins_state: latest # Can be 'present', 'latest', or 'absent'

# Gist base URL for package lists
gist_base_url: "https://gist.githubusercontent.com/timmyb824/807597f33b14eceeb26e4e6f81d45962/raw"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: micro_plugins
      micro_plugins_state: latest
```

## Features

1. Cross-platform support (macOS and Linux)
2. Plugin management via centralized list
3. Automatic plugin updates
4. Dependency handling through Homebrew/apt
5. Idempotent operations

## Plugin List

Plugins are managed via a `micro_plugins.list` file in your gist. The format is:

```
plugin1
plugin2
# Comments are supported
plugin3
```

## Notes

- The role automatically ensures Micro editor is installed through the appropriate package manager
- Plugin installations are idempotent
- When state is 'latest', plugins will be updated if already installed
- Unknown plugins are skipped with a warning
