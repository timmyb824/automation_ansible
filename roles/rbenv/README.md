# rbenv Role

This role installs, configures, or removes rbenv and Ruby on Linux and MacOS systems.

## Requirements

- For MacOS: Homebrew
- For Linux: apt package manager
- Git (will be installed automatically on Linux)

## Role Variables

- `rbenv_state`: Whether rbenv should be present or absent (default: present)
- `ruby_version`: Version of Ruby to install (default: "3.2.2")

## Features

1. Installation:
   - Installs rbenv and dependencies
   - Configures shell initialization
   - Installs specified Ruby version
   - Sets global Ruby version

2. MacOS-specific:
   - Uses Homebrew for rbenv and ruby-build
   - Checks for Homebrew presence

3. Linux-specific:
   - Installs all required build dependencies
   - Uses rbenv-installer script
   - Proper PATH configuration

4. Uninstallation:
   - Removes rbenv and ruby-build
   - Cleans up rbenv directory
   - Removes shell configurations

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: rbenv
      rbenv_state: present
      ruby_version: "3.2.2"
```

## License

MIT
