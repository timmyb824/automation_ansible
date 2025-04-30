# FZF Role

This role installs and configures fzf (command-line fuzzy finder) and related tools.

## Requirements

- Git must be installed
- For Linux:
  - Cargo/Rust for fd-find installation
  - ghq for fzf-git.sh installation
- For MacOS:
  - Homebrew

## Role Variables

- `fzf_state`: Can be 'present' or 'absent' (default: present)

## Dependencies

None

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: fzf
      fzf_state: present
```

## Features

1. Installs/uninstalls fzf
2. Installs fd-find (a modern alternative to `find`)
3. Clones fzf-git.sh for git integration
4. Handles both MacOS and Debian-based systems
5. Removes system fzf package if present on Debian systems
6. Installs from source on Debian systems for latest version

## License

MIT
