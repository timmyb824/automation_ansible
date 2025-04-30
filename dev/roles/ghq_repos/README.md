# GHQ Repositories Role

This Ansible role manages Git repositories using ghq across different operating systems.

## Requirements

- Ansible 2.9 or higher

## Dependencies

This role depends on:
- `homebrew` role (for macOS)
- `go_packages` role (for Linux)

These dependencies will be automatically installed when using this role.

## Role Variables

```yaml
# Default state for repository management
ghq_repos_state: present # Can be 'present' or 'absent'

# Gist base URL for repository lists
gist_base_url: "https://gist.githubusercontent.com/timmyb824/807597f33b14eceeb26e4e6f81d45962/raw"
```

## Usage

Basic usage in a playbook:

```yaml
- hosts: all
  roles:
    - role: ghq_repos
      ghq_repos_state: present
```

## Features

1. Cross-platform support (macOS and Linux)
2. Repository management via centralized list
3. Automatic dependency handling
4. Idempotent operations
5. Proper PATH handling for both platforms

## Repository List

Repositories are managed via a `ghq.list` file in your gist. The format is:

```
github.com/user/repo1
github.com/user/repo2.git
# Comments are supported
gitlab.com/user/repo3
```

## Notes

- The role automatically ensures ghq is installed through the appropriate package manager
- Repository cloning is idempotent (won't re-clone existing repositories)
- Handles both .git and non-.git repository URLs
- Automatically sets up the correct PATH for each platform
