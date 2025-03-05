# Ansible Role: tfenv

This Ansible role installs and configures tfenv and Terraform on Linux and MacOS systems.

## Requirements

- For MacOS: Homebrew will be installed if not present
- For Linux: Git must be available (will be installed if missing)

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```yaml
# Default Terraform version to install
tf_version: "1.6.6"

# Installation paths
tfenv_git_url: "https://github.com/tfutils/tfenv.git"
tfenv_install_dir: "{{ ansible_env.HOME }}/.tfenv"
tfenv_bin_dir: "{{ ansible_env.HOME }}/.local/bin"
```

## Example Playbook

```yaml
- hosts: servers
  roles:
    - role: tfenv
      vars:
        tf_version: "1.7.0" # Override default version
```

## License

MIT
