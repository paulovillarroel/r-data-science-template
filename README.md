# R Data Science Template

This template serves as an initial base structure for data science projects in R, designed to accelerate project development and standardize the organization of data science workflows.

## Project Structure

### 📁 Folder Organization

- **`data/`** - Data storage organized by processing stage
  - `raw/` - Original, unmodified data files
  - `processed/` - Cleaned and transformed datasets
  - `external/` - External data sources and reference datasets

- **`scripts/`** - R scripts for data processing, analysis, and modeling
  - Place your main analysis scripts here

- **`functions/`** - Custom R functions and utilities
  - Reusable functions for data processing and analysis

- **`models/`** - Machine learning models and related objects
  - `testing/` - Models under development and testing
  - `production/` - Validated models ready for production use

- **`outputs/`** - Generated outputs from analyses
  - `figures/` - Plots, charts, and visualizations
  - `tables/` - Processed tables and summary statistics

- **`reports/`** - Documentation and reports
  - R Markdown files, Quarto documents, Jupyter Notebooks, final reports, and documentation

- **`tests/`** - Unit tests for functions and validation scripts

## Usage

### Creating a project on your computer

1. Clone the repository:
   ```bash
   git clone https://github.com/paulovillarroel/r-data-science-template.git .
   ```
   (You must have GitHub CLI) - This creates the folder structure

2. Remove .gitkeep files:
   ```powershell
   Get-ChildItem -Recurse -Name ".gitkeep" | Remove-Item -Force
   ```