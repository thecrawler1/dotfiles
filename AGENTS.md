# AGENTS.md - Dotfiles Repository Guidelines

## Build/Lint/Test Commands
- **Stow all configs**: `./stow-all.sh` - Deploy all dotfiles using GNU Stow
- **Unstow all configs**: `./stow-all.sh -D` - Remove all deployed dotfiles
- **Restow configs**: `./stow-all.sh -R` - Update existing dotfiles (only needed when adding/removing files, not for editing existing ones)
- **Shell lint**: `shellcheck **/*.sh` - Lint all shell scripts for errors
- **Single script test**: `bash -n path/to/script.sh` - Syntax check individual script

## Code Style Guidelines

### File Organization
- Use GNU Stow directory structure for modular config management
- Group related configurations in dedicated directories
- Keep root directory clean with only essential files

### Shell Scripts
- Use `#!/bin/bash` or `#!/bin/sh` shebang based on requirements
- Add descriptive comments for complex operations
- Use `set -euo pipefail` for robust error handling in bash scripts

### Configuration Files
- Follow application-specific conventions (TOML for alacritty, shell for zsh)
- Use consistent indentation (4 spaces for blocks, 2 for nested)
- Group related settings with blank lines and comments

### Naming Conventions
- Directory names: lowercase, descriptive (alacritty/, polybar/, zsh/)
- Config files: Use standard names expected by applications
- Variables: lowercase with underscores in shell scripts

### Error Handling
- Test configurations manually after changes
- Keep backup files (.bak) for critical configs
- Use absolute paths for system-critical configurations

### Comments and Documentation
- Add comments explaining non-obvious configurations
- Document any external dependencies or requirements
- Include source URLs for themes or complex setups</content>
<parameter name="filePath">/home/thecrawler/dotfiles/AGENTS.md