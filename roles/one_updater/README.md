# One-Updater Role

This Ansible role installs and manages the one-updater tool.

## Requirements

None.

## Role Variables

- `install_path`: Path where to install the one-updater binary (default: `/usr/local/bin`)
- `run_update`: Whether to run the update command (default: `false`)
- `run_upgrade`: Whether to run the upgrade command (default: `false`)

## Example Playbook

```yaml
- hosts: servers
  roles:
    - role: one_updater
      vars:
        run_update: true
        run_upgrade: true
```

## License

MIT
