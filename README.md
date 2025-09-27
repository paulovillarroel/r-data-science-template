# R Data Science Template

This template serves as an initial base structure for data science projects in R, designed to accelerate project development and standardize the organization of data science workflows.

## Project Structure

### 📁 Folder Organization

- **`data/`** - Data storage organized by processing stage

  - `raw/` - Original, unmodified data files
  - `processed/` - Cleaned and transformed datasets
  - `external/` - External data sources and reference datasets
- **`scripts/`** - R scripts organized by purpose

  - `data_processing/` - Data cleaning and transformation scripts
  - `modeling/` - Model training and evaluation scripts
  - `analysis/` - Exploratory data analysis and statistical analysis
  - `deployment/` - Scripts for model deployment and production
- **`notebooks/`** - Interactive analysis and experimentation

  - `exploratory/` - Jupyter/R notebooks for data exploration
  - `prototypes/` - Prototype models and experimental analyses
- **`functions/`** - Custom R functions and utilities

  - Reusable functions for data processing and analysis
- **`models/`** - Machine learning models and related objects

  - `testing/` - Models under development and testing
  - `production/` - Validated models ready for production use
- **`config/`** - Configuration files and parameters

  - Model hyperparameters, database connections, API configurations
- **`outputs/`** - Generated outputs from analyses

  - `figures/` - Plots, charts, and visualizations
  - `tables/` - Processed tables and summary statistics
- **`reports/`** - Documentation and reports

  - R Markdown files, Quarto documents, Jupyter Notebooks, final reports, and documentation
- **`docs/`** - Technical documentation

  - API documentation, methodology, architecture, and project documentation
- **`logs/`** - Execution logs and monitoring

  - Debug information, performance metrics, and execution logs
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
3. Set up environment variables:

   ```bash
   cp .env.example .env
   ```

   Edit `.env` file with your specific configuration values.

## Environment Management

This template includes:

- **`.env.example`** - Template for environment variables
- **`.gitignore`** - Comprehensive gitignore for R data science projects
- **`renv.lock`** - (Create with `renv::snapshot()`) for R dependency management

## Getting Started

1. **Initialize R environment** (recommended):

   ```r
   install.packages("renv")
   renv::init()
   ```
2. **Create your first analysis script** in `scripts/analysis/`
3. **Store raw data** in `data/raw/`
4. **Document your work** in `notebooks/exploratory/` or `reports/`
