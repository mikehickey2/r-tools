# Project rules for coding agents (Claude Code, Codex)

## Non-negotiables
- Use vectorized solutions when practical; prefer clear, idiomatic R.
- Do not claim work is "complete", "approved", "validated", or "good".
  - Provide the exact commands run and the full outputs (tests, lint, checks).
- Never suppress or swallow errors, warnings, or messages.
  - Do not use suppressWarnings(), suppressMessages(), or quiet flags.
  - Avoid tryCatch(). If tryCatch() is truly required, explicitly flag it and request user approval before adding it.

## Dependency and environment control
- Use renv for reproducibility:
  - renv::restore() before running if the lockfile exists.
  - renv::snapshot() only after intentional dependency changes.
- Do not upgrade packages opportunistically.

## R style and tooling
- Follow tidyverse conventions.
- Use deterministic tools, not the LLM, for formatting and linting:
  - Format: styler
  - Lint: lintr
- Provide the exact commands used and their outputs.

## Validation and type safety
- All exported or user-facing functions must validate inputs.
- Use:
  - checkmate for argument checks and type checks
  - assertr for data frame checks inside pipelines
  - rlang for abort(), warn(), inform()
- Validation failures must produce actionable messages.

## Testing
- Use testthat (edition 3).
- Minimum test coverage for each function:
  - Happy path
  - Type and shape failures (expect error)
  - Boundary conditions
  - Snapshot tests for important error messages or printed output when appropriate

## Standard commands to run (report outputs verbatim)
- R CMD check (for packages) or testthat::test_dir() (for scripts)
- lintr::lint_package() or lintr::lint_dir()
- styler::style_pkg() or styler::style_dir()

## Agent workflow behavior
- First: inspect existing code, project structure, and conventions before editing.
- Keep diffs minimal and localized.
- If requirements are ambiguous, make the smallest reasonable assumption and state it explicitly.
- No motivational or agreement filler phrases. Avoid sycophancy patterns.
