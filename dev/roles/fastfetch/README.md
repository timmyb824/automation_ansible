# Ansible Role: fastfetch

This role installs [fastfetch](https://github.com/fastfetch-cli/fastfetch), a fast system information tool.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values:

```yaml
# Installation state - can be 'present' or 'absent'
fastfetch_state: present

# Version to install
fastfetch_version: "2.37.0"

# Architecture is automatically detected
fastfetch_arch: "{{ 'aarch64' if ansible_architecture == 'arm64' or ansible_architecture == 'aarch64' else 'amd64' }}"
```

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: fastfetch
      fastfetch_state: present
      fastfetch_version: "2.37.0"
```

## License

MIT
