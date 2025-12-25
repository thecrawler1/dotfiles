# AGENTS.md - Hyprland Configuration Guidelines

## Validation Commands
- **Validate config**: `hyprctl reload` - Test configuration syntax and reload Hyprland
- **Check syntax**: `hyprctl --help` - Verify hyprctl is available and working
- **Single test**: Manual testing required; restart Hyprland after config changes

## Code Style Guidelines

### File Organization
- Use modular config files sourced from `hyprland.conf`
- Group related settings in dedicated files (bindings.conf, looknfeel.conf, etc.)
- Keep main `hyprland.conf` minimal, using `source =` directives

### Formatting
- Use consistent indentation with 4 spaces for blocks
- One setting per line in configuration blocks
- Group related settings with blank lines

### Naming Conventions
- Variables: Use `$` prefix for variables (e.g., `$terminal`, `$browser`)
- Descriptive variable names in lowercase with hyphens
- Command names: Use descriptive bind descriptions with proper capitalization

### Comments and Documentation
- Use `#` for comments explaining complex configurations
- Include links to Hyprland wiki for reference
- Comment out unused but potentially useful configurations

### Error Handling
- Test configurations incrementally with `hyprctl reload`
- Keep backup configs (.bak files) for quick rollback
- Use `exec` commands carefully to avoid system instability

### Imports and Dependencies
- Source files in logical order: defaults first, then customizations
- Use absolute paths for critical configurations
- Document any external dependencies in comments