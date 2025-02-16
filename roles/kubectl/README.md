# Kubectl Role

This role installs and configures kubectl and kubectl-krew on MacOS and Linux systems.

## Requirements

- curl must be installed (will be installed automatically on Linux if missing)
- sudo access for installing kubectl to /usr/local/bin

## Role Variables

- `kubectl_version`: Version of kubectl to install (default: "v1.28.2")
- `kubectl_state`: Whether kubectl should be present or absent (default: present)

## Features

1. Installs kubectl from official Kubernetes release
2. Installs kubectl-krew plugin manager
3. Adds krew to PATH in shell rc files
4. Handles both MacOS and Linux installations
5. Uses appropriate architecture (arm64 for MacOS, amd64 for Linux)

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: kubectl
      kubectl_version: "v1.28.2"
      kubectl_state: present
```

## License

MIT
