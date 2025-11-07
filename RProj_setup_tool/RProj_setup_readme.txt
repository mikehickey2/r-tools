================================================================================
R PROJECT SETUP TOOL
================================================================================

Author: Michael Hickey
Version: 1.0.0
Updated: 2025-11-07

================================================================================
QUICK REFERENCE
================================================================================

Once installed, usage is:

  source("~/tools/r_tools/RProj_setup.r")
  newproject("Your Project Name")

That's it! Follow the prompts for short name and renv setup.

Full syntax:
  newproject(project_name,          # Full project title (required)
             project_short_name,    # Short name for .Rproj (default: prompts)
             subdirs,               # Create subdirs? (default: TRUE)
             create_gitignore,      # Create .gitignore? (default: TRUE)
             create_readme,         # Create README? (default: TRUE)
             create_rproj,          # Create .Rproj? (default: TRUE)
             initialize_renv,       # Setup renv? (default: prompts)
             custom_dirs)           # Additional dirs (default: NULL)

================================================================================
OVERVIEW
================================================================================

This tool automates the creation of a professional, standardized R project
structure. It sets up a complete directory hierarchy, configuration files,
and documentation templates for research projects.

ONE COMMAND SETUP:
  newproject("Your Project Name")

That's it! Professional project structure created in seconds.

================================================================================
FUNCTION: newproject()
================================================================================

ARGUMENTS:
----------
newproject(project_name,          # Full project title (required)
           project_short_name,    # Short name for .Rproj file (default: NULL = prompts)
           subdirs,               # Create subdirectories? (default: TRUE)
           create_gitignore,      # Create .gitignore? (default: TRUE)
           create_readme,         # Create README.md? (default: TRUE)
           create_rproj,          # Create .Rproj file? (default: TRUE)
           initialize_renv,       # Setup renv? (default: NULL = prompts)
           custom_dirs)           # Additional directories (default: NULL)

DEFAULTS:
---------
All features are ON by default. You typically only need to provide:
  - project_name (required)
  - project_short_name (optional - will prompt if omitted)

================================================================================
WHY USE THIS TOOL?
================================================================================

✓ CONSISTENCY: Every project follows the same professional structure
✓ TIME-SAVING: Set up a complete project in 30 seconds instead of 30 minutes
✓ BEST PRACTICES: Incorporates R community standards (renv, .gitignore, etc.)
✓ COLLABORATION-READY: Clear structure makes it easy for others to navigate
✓ GIT-READY: Includes .gitignore configured for R projects
✓ REPRODUCIBLE: Optional renv integration locks package versions

Perfect for:
  - Master's thesis projects
  - Research publications
  - Portfolio projects
  - Collaborative research
  - Teaching students

================================================================================
INSTALLATION
================================================================================

1. Save this script to:
   ~/tools/r_tools/RProj_setup.r

2. Optional: Add to your .Rprofile for easy access:

   Add this line to ~/.Rprofile:
   source("~/tools/r_tools/RProj_setup.r")

   Then newproject() is available in every R session!

================================================================================
QUICK START
================================================================================

1. Create your project directory:

   mkdir ~/projects/my-research-project
   cd ~/projects/my-research-project

2. Open R or RStudio

3. Load the script:

   source("~/tools/r_tools/RProj_setup.r")

4. Run setup:

   newproject("My Research Project")

5. Follow the prompts:
   - Enter short name for .Rproj file (or press Enter to auto-generate)
   - Choose whether to initialize renv (y/n)

Done!

================================================================================
USAGE EXAMPLES
================================================================================

BASIC (Interactive - Recommended):
-----------------------------------
newproject("US Airline Pilot Retention Study")
# Prompts for: short name, renv setup


SPECIFY SHORT NAME:
-------------------
newproject("US Airline Pilot Retention Study", "pilot-retention")
# Creates "pilot-retention.Rproj", still prompts for renv


FULLY AUTOMATED (No Prompts):
------------------------------
newproject("My Research Project",
           project_short_name = "research",
           initialize_renv = TRUE)


ADD CUSTOM DIRECTORIES:
-----------------------
newproject("My Project",
           project_short_name = "myproj",
           custom_dirs = c("models", "presentations"))


SKIP RENV:
----------
newproject("Quick Analysis",
           project_short_name = "quick",
           initialize_renv = FALSE)

================================================================================
WHAT GETS CREATED
================================================================================

DIRECTORY STRUCTURE:
--------------------
.
├── data/
│   ├── raw/                    # Original data (never modified)
│   └── processed/              # Cleaned, analysis-ready data
├── scripts/
│   ├── analysis/               # R scripts and R Markdown files
│   └── functions/              # Reusable R functions
├── output/
│   ├── figures/                # Generated plots and visualizations
│   ├── tables/                 # Generated statistical tables
│   └── reports/                # Rendered reports (.html, .pdf, .docx)
├── documentation/              # Codebooks, data dictionaries, notes
├── archive/                    # Old versions of files
└── tmp/                        # Temporary files (gitignored)

FILES CREATED:
--------------
✓ README.md              - Comprehensive project documentation template
✓ .gitignore             - R-specific git ignore patterns
✓ [short-name].Rproj     - RStudio project file
✓ .gitkeep files         - Ensures empty directories tracked by git
✓ renv files (optional)  - Package management if you choose "yes"
  - renv.lock            - Locked package versions
  - .Rprofile            - Auto-loads renv
  - renv/                - Package library

================================================================================
ARGUMENT DETAILS
================================================================================

project_name:
  Full project title used in README.md
  Example: "US Airline Pilot Retention Study"

project_short_name:
  Short name for .Rproj file (no spaces, lowercase recommended)
  If NULL: prompts you or auto-generates from project_name
  Example: "pilot-retention" creates "pilot-retention.Rproj"

subdirs:
  TRUE (default): Creates organized subdirectories (data/raw, scripts/analysis, etc.)
  FALSE: Creates only top-level directories (data, scripts, output, etc.)

create_gitignore:
  TRUE (default): Creates .gitignore with R-specific patterns
  FALSE: Skip .gitignore creation

create_readme:
  TRUE (default): Creates comprehensive README.md template
  FALSE: Skip README creation

create_rproj:
  TRUE (default): Creates RStudio project file
  FALSE: Skip .Rproj creation

initialize_renv:
  NULL (default): Prompts you to decide
  TRUE: Automatically sets up renv (takes a few minutes)
  FALSE: Skip renv setup

custom_dirs:
  NULL (default): No additional directories
  Character vector: Creates additional custom directories
  Example: c("models", "presentations", "manuscripts")

================================================================================
RENV (REPRODUCIBLE PACKAGE MANAGEMENT)
================================================================================

If you choose to initialize renv:

WHAT IT DOES:
  - Scans project for package dependencies
  - Locks current package versions in renv.lock
  - Creates project-specific package library
  - Ensures reproducibility

TEAM COLLABORATION:
  Collaborators run: renv::restore()
  This installs exact same package versions

COMMON COMMANDS:
  renv::snapshot()  # Save current package versions
  renv::restore()   # Restore to locked versions
  renv::update()    # Update all packages

================================================================================
BEST PRACTICES
================================================================================

DATA:
  ✓ Raw data in data/raw/ - NEVER modify
  ✓ Processed data in data/processed/
  ✓ Document transformations in scripts

SCRIPTS:
  ✓ Analysis scripts in scripts/analysis/
  ✓ Reusable functions in scripts/functions/
  ✓ Use meaningful names (01_data_cleaning.R, 02_analysis.R)

VERSION CONTROL:
  ✓ Initialize git immediately: git init
  ✓ Commit after setup
  ✓ Commit often with meaningful messages

DOCUMENTATION:
  ✓ Update README.md with project details
  ✓ Keep data dictionaries in documentation/
  ✓ Document known issues

================================================================================
FREQUENTLY ASKED QUESTIONS
================================================================================

Q: Can I modify the structure after creation?
A: Yes! Add/remove directories as needed.

Q: Do I have to use renv?
A: No, it's optional. Say "no" when prompted or set initialize_renv = FALSE

Q: What if I already have files in the directory?
A: Script checks for existing files and won't overwrite them.

Q: Can I customize .Rproj settings?
A: Yes, modify the script or change settings in RStudio after creation.

Q: How do I share this tool?
A: Send the script and this README.

================================================================================
TROUBLESHOOTING
================================================================================

ISSUE: "renv::init() taking too long"
FIX: Normal for first time. Be patient (can take 5-10 minutes).

ISSUE: "readline() doesn't work"
FIX: Use non-interactive mode with all parameters specified.

ISSUE: "Directory already exists"
FIX: This is informational, not an error. Existing directories preserved.

================================================================================
SUPPORT
================================================================================

Questions? Contact: michael.j.hickey@und.edu

If you find this useful:
  - Share with colleagues
  - Cite in acknowledgments
  - Contribute improvements

================================================================================
LICENSE
================================================================================

Free to use and modify for academic and personal projects.
Attribution appreciated but not required.

================================================================================
