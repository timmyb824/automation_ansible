# Ansible Role: pkgx

This role installs and manages pkgx and its packages on both MacOS and Linux systems.

## Requirements

- For MacOS: Homebrew must be installed
- For Linux: curl must be installed (role will install it if missing)

## Role Variables

- `pkgx_state`: Controls whether pkgx and its packages should be installed or removed
  - Values: `present` (default) or `absent`
  - Example: `pkgx_state: absent` will uninstall pkgx and all its packages

## Dependencies

None

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: pkgx
      pkgx_state: present  # Install pkgx and packages

# To uninstall:
- hosts: all
  roles:
    - role: pkgx
      pkgx_state: absent  # Remove pkgx and packages
```

## Package Lists

The role automatically detects your OS and uses the appropriate package list:
- MacOS: Uses `pkgx_darwin.list`
- Linux: Uses `pkgx_linux.list`

Package lists are fetched from a Gist repository and should contain one package per line. Comments (lines starting with #) are ignored.

## Installation Details

- pkgx is installed to `/usr/local/bin`
- Packages are installed to `/usr/local/pkgs` and linked to `/usr/local/bin`
- Package management is handled by the `pkgm` command, which is installed alongside pkgx

## Notes

- All operations are idempotent
- Failed package installations/uninstallations are logged but won't stop the playbook
- Requires sudo access for installation and package management (use -K when running playbook)
- Uses the latest version of pkgx which manages packages via pkgm
