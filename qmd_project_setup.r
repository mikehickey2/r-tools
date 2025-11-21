# Quarto Project Setup for Positron on macOS

setup_quarto_project <- function(project_name) {
  # Create a new directory for the project
  dir.create(project_name)
  setwd(project_name)

  # Create _quarto.yml
  writeLines(c(
    'project:',
    '  type: website',
    '  output-dir: _site',
    '  theme: default',
    '  title: "Your Project Title"',
    '  author: "Your Name"
  '), '_quarto.yml')

  # Inform user
  message('Quarto project setup complete for: ', project_name)
}