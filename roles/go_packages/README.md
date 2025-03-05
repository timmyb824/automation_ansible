# Go Packages Role

This Ansible role manages Go packages installation across different operating systems.

## Requirements

- Ansible 2.9 or higher

## Dependencies

This role depends on:

- `homebrew` role (for macOS)
- `pkgx` role (for Linux)

These dependencies will be automatically installed when using this role.

## Role Variables

```yaml
# Default state for Go packages
go_packages_state: present # Can be 'present' or 'absent'

# Gist base URL for package lists
gist_base_url: "https://gist.githubusercontent.com/timmyb824/807597f33b14eceeb26e4e6f81d45962/raw"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: go_packages
      go_packages_state: present
```

## Features

1. Cross-platform support (macOS and Linux)
2. Package management via centralized list
3. Automatic PATH configuration
4. Dependency handling through Homebrew/pkgx
5. Idempotent operations

## Package List

Packages are managed via a `go.list` file in your gist. The format is:

```
github.com/user/package@latest
github.com/another/package@v1.2.3
# Comments are supported
```

## Notes

- The role automatically ensures Go is installed through the appropriate package manager
- Go binary path is automatically added to PATH
- Package installations are idempotent
