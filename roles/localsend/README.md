# Ansible Role: localsend

This role installs [LocalSend](https://github.com/localsend/localsend), a cross-platform file sharing tool.

## Important Note

**This role only supports x86_64 architecture.** It will fail on ARM or other architectures as LocalSend only provides x86_64 .deb packages.

## Requirements

- Debian-based Linux distribution
- x86_64 architecture only (ARM not supported)

## Role Variables

Available variables are listed below, along with default values:

```yaml
# Installation state - can be 'present' or 'absent'
localsend_state: present

# Version to install
localsend_version: "1.14.0"
```

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: localsend
      localsend_state: present
      localsend_version: "1.14.0"
```

## License

MIT
