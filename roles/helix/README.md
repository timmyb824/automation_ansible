# Ansible Role: helix

This role installs [Helix](https://github.com/helix-editor/helix) editor and its language servers/tools.

## Features

- Installs Helix from source with cross-platform and architecture support
- Configures language servers and tools:
  - NPM packages (TypeScript, YAML, Ansible, etc.)
  - Python packages (Black, Yamllint, etc.)
  - Go packages (Gopls, Delve, etc.)
  - System-specific packages (Marksman, Terraform-ls, etc.)
  - Rust components
  - Ruby components
- Optional helix-gpt installation

## Requirements

The following tools should be installed before running this role:
- npm
- pip
- go
- cargo/rust

## Role Variables

See [defaults/main.yaml](defaults/main.yaml) for a complete list of variables.

Key variables:

```yaml
# Installation state
helix_state: present

# Version management
helix_install_method: source
helix_use_ghq: false

# Additional components
helix_install_gpt: true
helix_install_rust_components: true
helix_install_ruby_components: true
```

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: helix
      helix_state: present
      helix_install_gpt: true
```

## Architecture Support

This role supports both x86_64 and ARM architectures. It will automatically detect the system architecture and install the appropriate versions of tools where available.

## License

MIT
