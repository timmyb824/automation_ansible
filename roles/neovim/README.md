# Neovim Role

This role installs or removes Neovim on Linux and MacOS systems.

## Requirements

- For Linux: curl (will be installed automatically if missing)
- For MacOS: Homebrew

## Role Variables

- `neovim_state`: Whether Neovim should be present or absent (default: present)

## Features

1. Linux:
   - Downloads latest Neovim release from GitHub
   - Installs to /opt/nvim-linux64
   - Creates symlink in /usr/local/bin
   - Removes existing apt-installed Neovim package
   - Handles clean installation and removal

2. MacOS:
   - Uses Homebrew for installation
   - Simple installation/removal process

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: neovim
      neovim_state: present
```

## License

MIT
