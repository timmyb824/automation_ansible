# UV Role

This role installs and configures uv, a Python packaging tool, on Linux and MacOS systems.

## Requirements

- curl (will be installed automatically if needed)
- Internet access for downloading uv and Python packages

## Role Variables

- `uv_state`: Whether uv should be present or absent (default: present)
- `uv_python_versions`: List of Python versions to install (default: ["3.11", "3.12"])
- `uv_tools_gist_url`: URL to the gist containing the list of Python tools to install

## Features

1. Linux-specific:
   - Detects and uninstalls pipx packages
   - Detects and removes pyenv installation
   - Installs uv

2. Common features (Linux and MacOS):
   - Installs uv if not present
   - Verifies uv installation
   - Installs specified Python versions
   - Installs Python tools from a gist list
   - Handles uninstallation and cleanup

3. Error Handling:
   - Continues installation even if individual tools fail
   - Provides debug output for failed installations
   - Safe uninstallation process

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: uv
      uv_state: present
      uv_python_versions:
        - "3.11"
        - "3.12"
```

## Uninstallation

To uninstall uv and all its components:

```yaml
- role: uv
  uv_state: absent
```

This will:
1. Clean uv cache
2. Remove all installed Python versions
3. Remove all installed tools
4. Remove uv binaries

## License

MIT
