# Gitopolis Role

This Ansible role manages Git repositories using gitopolis across different operating systems.

## Requirements

- Ansible 2.9 or higher
- A valid `.gitopolis.toml` configuration file

## Dependencies

This role depends on:
- `homebrew` role (for macOS)
- `pkgx` role (for Linux)

These dependencies will be automatically installed when using this role.

## Role Variables

```yaml
# Default state for gitopolis
gitopolis_state: present # Can be 'present' or 'absent'

# Path to directory containing .gitopolis.toml
gitopolis_config_path: "{{ ansible_env.HOME }}/DEV/homelab"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: gitopolis
      gitopolis_state: present
      gitopolis_config_path: "/custom/path/to/config"
```

## Features

1. Cross-platform support (macOS and Linux)
2. Repository management via TOML configuration
3. Automatic dependency handling
4. Idempotent operations
5. Configuration path customization

## Configuration

Gitopolis uses a `.gitopolis.toml` file to manage repositories. The file should be placed in the specified `gitopolis_config_path`.

Example `.gitopolis.toml`:
```toml
[[repository]]
name = "repo1"
url = "https://github.com/user/repo1.git"
path = "path/to/clone"

[[repository]]
name = "repo2"
url = "https://github.com/user/repo2.git"
path = "another/path"
```

## Notes

- The role automatically ensures gitopolis is installed through the appropriate package manager
- Repository cloning is handled by gitopolis based on the TOML configuration
- The role will fail if the specified configuration file is not found
