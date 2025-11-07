## Professional R Project Setup Tool
## Creates standardized directory structure for portfolio-quality research projects
## Author: Michael Hickey
## Updated: 2025-11-07

#' Create New Professional R Project
#'
#' Sets up a complete project structure with clear separation between
#' source files (scripts) and outputs (figures, tables, reports). Includes
#' optional RStudio project file and renv package management.
#'
#' @param project_name Full project title (used in README)
#' @param project_short_name Short name for .Rproj file. If NULL, prompts user or auto-generates
#' @param subdirs If TRUE, creates organized subdirectories (default: TRUE)
#' @param create_gitignore If TRUE, creates .gitignore with R-specific patterns (default: TRUE)
#' @param create_readme If TRUE, creates comprehensive README template (default: TRUE)
#' @param create_rproj If TRUE, creates RStudio project file (default: TRUE)
#' @param initialize_renv If NULL, prompts user; if TRUE/FALSE, uses that value (default: NULL)
#' @param custom_dirs Additional directories to create (character vector, default: NULL)
#'
#' @return NULL (creates files and directories as side effects)
#'
#' @examples
#' # Interactive mode - prompts for inputs
#' newproject("US Airline Pilot Retention Study")
#'
#' # Specify short name, prompt for renv
#' newproject("US Airline Pilot Retention Study", "pilot-retention")
#'
#' # Fully specified - no prompts
#' newproject("My Research Project",
#'            project_short_name = "research",
#'            initialize_renv = TRUE)
newproject <- function(project_name = "R Project",
                       project_short_name = NULL,
                       subdirs = TRUE,
                       create_gitignore = TRUE,
                       create_readme = TRUE,
                       create_rproj = TRUE,
                       initialize_renv = NULL,
                       custom_dirs = NULL) {

  # Prompt for project short name if not provided
  if (is.null(project_short_name) && interactive()) {
    cat("\n=== Project Setup ===\n")
    cat("\nEnter a short name for the .Rproj file (e.g., 'retention-analysis'):\n")
    cat("(Press Enter to auto-generate from project name)\n")
    user_input <- readline(prompt = "> ")

    if (nchar(trimws(user_input)) > 0) {
      project_short_name <- user_input
      cat(paste0("✓ Using short name: ", project_short_name, "\n"))
    } else {
      project_short_name <- gsub("[^A-Za-z0-9]+", "-", project_name)
      project_short_name <- tolower(project_short_name)
      cat(paste0("✓ Auto-generated short name: ", project_short_name, "\n"))
    }
  } else if (is.null(project_short_name)) {
    project_short_name <- gsub("[^A-Za-z0-9]+", "-", project_name)
    project_short_name <- tolower(project_short_name)
  }

  # Prompt for renv initialization if not specified
  if (is.null(initialize_renv) && interactive()) {
    cat("\nInitialize renv for reproducible package management?\n")
    cat("(This will take a few minutes but ensures reproducibility)\n")
    cat("Initialize renv? (y/n): ")
    response <- tolower(trimws(readline()))
    initialize_renv <- response %in% c("y", "yes")

    if (initialize_renv) {
      cat("✓ Will initialize renv\n")
    } else {
      cat("✓ Skipping renv (you can add it later with renv::init())\n")
    }
  } else if (is.null(initialize_renv)) {
    initialize_renv <- FALSE
  }

  # Define directory structure
  if (subdirs) {
    dir.names <- c(
      "data/raw",
      "data/processed",
      "scripts/analysis",
      "scripts/functions",
      "output/figures",
      "output/tables",
      "output/reports",
      "documentation",
      "archive",
      "tmp"
    )
  } else {
    dir.names <- c("data", "scripts", "output", "documentation", "archive", "tmp")
  }

  if (!is.null(custom_dirs)) {
    if (!is.character(custom_dirs)) {
      stop("custom_dirs must be a character vector")
    }
    dir.names <- c(dir.names, custom_dirs)
  }

  if (!is.character(dir.names)) {
    stop("Directory names must be character strings.")
  }

  cat("\n=== Creating R Project Structure ===\n\n")

  # Create directories
  for (dir in dir.names) {
    if (!dir.exists(dir)) {
      dir.create(dir, recursive = TRUE, showWarnings = FALSE)
      cat("✓ Created:", dir, "\n")
    } else {
      cat("○ Exists: ", dir, "\n")
    }
  }

  # Create .gitignore
  if (create_gitignore) {
    gitignore_content <- c(
      "# R Project Files",
      ".Rhistory",
      ".RData",
      ".Rproj.user",
      "",
      "# Temporary files",
      "tmp/",
      "*.tmp",
      "",
      "# macOS",
      ".DS_Store",
      "",
      "# Windows",
      "Thumbs.db",
      "",
      "# RStudio",
      ".Rproj.user/",
      "",
      "# renv - ignore library but track lockfile",
      "renv/library/",
      "renv/local/",
      "renv/staging/",
      "",
      "# Output (uncomment if not tracking output)",
      "# output/",
      "",
      "# Sensitive data (adjust as needed)",
      "# data/raw/*.csv",
      "# data/raw/*.xlsx",
      "# !data/raw/.gitkeep"
    )

    if (!file.exists(".gitignore")) {
      writeLines(gitignore_content, ".gitignore")
      cat("\n✓ Created .gitignore\n")
    } else {
      cat("\n○ .gitignore already exists\n")
    }
  }

  # Create README template
  if (create_readme) {
    if (subdirs) {
      tree <- c(
        "```",
        ".",
        "├── data/",
        "│   ├── raw/                    # Original data (untouched)",
        "│   └── processed/              # Cleaned, analysis-ready data",
        "├── scripts/",
        "│   ├── analysis/               # Analysis scripts and R Markdown files",
        "│   └── functions/              # Reusable R functions",
        "├── output/",
        "│   ├── figures/                # Generated plots and visualizations",
        "│   ├── tables/                 # Generated statistical tables",
        "│   └── reports/                # Rendered reports (.html, .pdf, .docx)",
        "├── documentation/              # Codebooks, data dictionaries, methodology notes",
        "├── archive/                    # Old versions of files",
        "└── tmp/                        # Temporary files (gitignored)",
        "```"
      )
    } else {
      tree <- c(
        "```",
        ".",
        "├── data/",
        "├── scripts/",
        "├── output/",
        "├── documentation/",
        "├── archive/",
        "└── tmp/",
        "```"
      )
    }

    readme_template <- c(
      paste("#", project_name),
      "",
      "## Overview",
      "",
      "Brief description of the project.",
      "",
      "## Directory Structure",
      "",
      tree,
      "",
      "## Requirements",
      "",
      "**R Version:** 4.5.1 or higher",
      "",
      "**Required Packages:**",
      "- List required R packages",
      "- Or see `renv.lock` for package versions (if using renv)",
      "",
      "## Quick Start",
      "",
      "1. Open the R project in RStudio",
      "2. Install required packages",
      "3. Open analysis scripts in `scripts/analysis/`",
      "4. Run the analysis",
      "",
      "## Data",
      "",
      "- **Input data:** Located in `data/processed/`",
      "- **Raw data:** Available in `data/raw/` (for reference only)",
      "",
      "## Output",
      "",
      "Analysis outputs are generated to:",
      "- **Reports:** `output/reports/`",
      "- **Figures:** `output/figures/`",
      "- **Tables:** `output/tables/`",
      "",
      "## Known Issues / Limitations",
      "",
      "- List any known issues or limitations",
      "- Note any work in progress",
      "",
      "## Author",
      "",
      "## License",
      "",
      "## Citation",
      ""
    )

    if (!file.exists("README.md")) {
      writeLines(readme_template, "README.md")
      cat("✓ Created README.md\n")
    } else {
      cat("○ README.md already exists\n")
    }
  }

  # Create .gitkeep files for empty directories
  if (subdirs) {
    gitkeep_dirs <- c("data/raw", "data/processed",
                      "output/figures", "output/tables", "output/reports",
                      "documentation")
    for (dir in gitkeep_dirs) {
      if (dir.exists(dir)) {
        gitkeep_file <- file.path(dir, ".gitkeep")
        if (!file.exists(gitkeep_file)) {
          file.create(gitkeep_file)
        }
      }
    }
    cat("✓ Created .gitkeep files in empty directories\n")
  }

  # Create .Rproj file
  if (create_rproj) {
    proj_filename <- paste0(project_short_name, ".Rproj")
    existing_rproj <- list.files(pattern = "\\.Rproj$")

    if (length(existing_rproj) == 0) {
      rproj_content <- c(
        "Version: 1.0",
        "",
        "RestoreWorkspace: No",
        "SaveWorkspace: No",
        "AlwaysSaveHistory: Default",
        "",
        "EnableCodeIndexing: Yes",
        "UseSpacesForTab: Yes",
        "NumSpacesForTab: 2",
        "Encoding: UTF-8",
        "",
        "RnwWeave: knitr",
        "LaTeX: XeLaTeX",
        "",
        "AutoAppendNewline: Yes",
        "StripTrailingWhitespace: Yes"
      )

      writeLines(rproj_content, proj_filename)
      cat(paste0("✓ Created ", proj_filename, "\n"))
    } else {
      cat(paste0("○ .Rproj file already exists: ", existing_rproj[1], "\n"))
    }
  }

  cat("\n🎉 Project structure created successfully!\n")
  cat("📁 Working directory:", getwd(), "\n")

  # Initialize renv if requested
  if (initialize_renv) {
    cat("\n--- Initializing renv ---\n")

    if (!requireNamespace("renv", quietly = TRUE)) {
      cat("Installing renv package...\n")
      install.packages("renv")
    }

    cat("Initializing renv (this may take a few minutes)...\n")
    renv::init()

    cat("\n✓ renv initialized successfully!\n")
    cat("📦 Package library:", renv::paths$library(), "\n")
    cat("\nTeam members should run: renv::restore()\n")
  }

  cat("\n")
  invisible(NULL)
}


# ============================================================================
# USAGE EXAMPLES
# ============================================================================

# Interactive mode - prompts for short name and renv:
# source("~/tools/r_tools/RProj_setup.r")
# newproject("US Airline Pilot Retention Study")

# Specify short name, prompt for renv:
# newproject("US Airline Pilot Retention Study", "pilot-retention")

# Non-interactive - specify everything:
# newproject("My Research Project",
#            project_short_name = "research",
#            initialize_renv = TRUE)

# With custom directories:
# newproject("My Project",
#            project_short_name = "myproj",
#            custom_dirs = c("models", "presentations"))
