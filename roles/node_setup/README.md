# Node.js Setup Role

This Ansible role manages Node.js installation using fnm (Fast Node Manager).

## Requirements

- fnm must be installed (can be installed via the `fnm` role)
- On Linux, Cargo must be available for fnm installation
- On MacOS, Homebrew must be available

## Role Variables

- `node_version`: The version of Node.js to install (default: "20")
- `node_setup_state`: Whether to install or remove Node.js (default: "present")

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: node_setup
      node_version: "18"
```

## Dependencies

- Requires the `fnm` role for the fnm installation
- On Linux, requires the `cargo` role
- On MacOS, requires Homebrew

## License

MIT
