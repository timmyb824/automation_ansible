# Summary

automation_ansible is a collection of Ansible playbooks, roles, and modules that can be used to automate various tasks such as provisioning infrastructure, configuring servers, and deploying applications. Ansible is an open-source automation tool that simplifies the management and orchestration of IT infrastructure.

## Running Ansible Playbooks with Tags

You can control which roles to run using tags in several ways:

### Run Specific Roles by Tags

```bash
# Run only security-related roles
ansible-playbook playbook.yaml --tags security

# Run only dev tools
ansible-playbook playbook.yaml --tags dev_tools

# Run multiple tag groups
ansible-playbook playbook.yaml --tags "security,kubernetes"
```

### Skip Specific Roles

```bash
# Skip all git-related roles
ansible-playbook playbook.yaml --skip-tags git

# Skip multiple groups
ansible-playbook playbook.yaml --skip-tags "security,editors"
```

### List All Available Tags

```bash
ansible-playbook playbook.yaml --list-tags
```

### Available Tag Groups

| Tag Group          | Description                                   |
| ------------------ | --------------------------------------------- |
| `dev_tools`        | Development tools (rust, go, node, etc.)      |
| `package_managers` | Package managers (homebrew, pkgx)             |
| `security`         | Security tools (trufflehog, gitleaks, teller) |
| `kubernetes`       | K8s tools (helm, k9s)                         |
| `git`              | Git-related tools (ghq, gitopolis)            |
| `shell`            | Shell tools (zsh, atuin, fzf)                 |
| `editors`          | Text editors (micro, helix)                   |
| `networking`       | Network tools (cloudflared)                   |
| `cloud_tools`      | Cloud tools (oci, awscli)                     |
| `file_management`  | File management tools (superfile)             |
| `file_sharing`     | File sharing tools (localsend)                |

This gives you fine-grained control over which roles to run without having to modify the playbook file.
