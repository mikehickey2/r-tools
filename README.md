# r-tools

Personal R development utilities: project scaffolding, coding reference, and AI agent guidelines.

## Contents

### `RProj_setup_tool/`
Professional R project setup tool that creates standardized directory structures.

- **Usage:** `newproject("Your Project Name")`
- **Creates:** `data/`, `scripts/`, `output/`, `documentation/`, `archive/`, `tmp/`
- **Includes:** `.Rproj`, `.gitignore`, `README.md`, optional renv initialization
- **Docs:** See `RProj_setup_tool/RProj_setup_readme.txt`

### `r_coding/`
R programming quick reference following tidyverse conventions.

| File | Content |
|------|---------|
| `r_commands_qref.md` | Comprehensive operator/function reference |
| `r_coding_standards.md` | Style guide (4-space indent, 80-char lines) |
| `r_control_structures.md` | Loops, conditionals, flow control |
| `r_functions.md` | Function definition patterns |
| `r_dates_and_times.md` | Date/time operations |

### `claude/`
AI agent configuration for Claude Code and similar tools.

- `CLAUDE.md` - R project coding standards (vectorized solutions, renv, testthat, checkmate/assertr validation)

## Setup

To auto-load `newproject()` in R sessions, add to your `~/.Rprofile`:

```r
source("~/projects/r-tools/RProj_setup_tool/RProj_setup.r")
```
