# Ansible Role: atuin

This role installs and configures [atuin](https://github.com/ellie/atuin), a shell history sync tool.

## Requirements

- For MacOS: Homebrew must be installed
- For Linux with cargo installation: Rustup/Cargo must be installed
- For Linux with script installation: curl must be installed

## Role Variables

```yaml
# State of the role (present or absent)
atuin_state: present

# Installation method for Linux (cargo or script)
atuin_install_method: script

# Atuin sync credentials
atuin_username: ""  # Your atuin username
atuin_password: ""  # Your atuin account password
atuin_key: ""      # Your atuin encryption key
```

## Dependencies

- For cargo installation method: Requires the rustup role or cargo to be pre-installed

## Example Playbook

```yaml
# Install atuin using the script method
- hosts: all
  vars:
    atuin_username: "your_username"
    atuin_password: "{{ vault_atuin_password }}"  # Store sensitive data in vault
    atuin_key: "{{ vault_atuin_key }}"           # Store sensitive data in vault
  roles:
    - role: atuin
      atuin_state: present
      atuin_install_method: script

# Install atuin using cargo
- hosts: all
  vars:
    atuin_username: "your_username"
    atuin_password: "{{ vault_atuin_password }}"
    atuin_key: "{{ vault_atuin_key }}"
  roles:
    - role: atuin
      atuin_state: present
      atuin_install_method: cargo

# Uninstall atuin
- hosts: all
  roles:
    - role: atuin
      atuin_state: absent
```

## Notes

- On MacOS, installation is always done via Homebrew
- On Linux, you can choose between cargo or script installation
- The role will automatically initialize atuin for your current shell
- Atuin sync requires a username, password, and encryption key
- All operations are idempotent
- For security, store your atuin credentials in ansible-vault
