# Public Bootstrap Layer

This repo prepares any new Linux machine for configuration management.

### What it does
- Installs Ansible and base utilities
- Sets up a daily `ansible-pull`
- Prepares `/opt/private-infra` for the private configuration layer

### Usage
```bash
curl -fsSL https://raw.githubusercontent.com/plmeister/bootstrap/main/bootstrap.sh | bash
```
