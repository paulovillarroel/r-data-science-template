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

### Creating a New Project

#### Option 1: Simple Setup (Recommended for beginners)

1. **Clone directly into your project folder:**
   ```bash
   git clone https://github.com/paulovillarroel/r-data-science-template.git .
   ```

2. **Clean up template files:**
   ```bash
   # Windows PowerShell
   Get-ChildItem -Path . -Recurse -Filter ".gitkeep" | Remove-Item -Force

   # Mac/Linux
   find . -name ".gitkeep" -delete
   ```

3. **Start working on your project!**

#### Option 2: Complete Setup (For independent projects)

1. **Clone the template repository:**
   ```bash
   git clone https://github.com/paulovillarroel/r-data-science-template.git your-project-name
   cd your-project-name
   ```

2. **Set up as your own repository:**
   ```bash
   # Windows PowerShell
   Remove-Item -Recurse -Force .git

   # Windows Command Prompt
   rmdir /s /q .git

   # Mac/Linux
   rm -rf .git

   # All platforms
   git init
   git add .
   git commit -m "Initial commit from R data science template"
   ```

3. **Clean up template files:**
   ```powershell
   # Windows PowerShell
   Get-ChildItem -Recurse -Name ".gitkeep" | Remove-Item -Force
   ```
   ```bash
   # Linux/Mac
   find . -name ".gitkeep" -delete
   ```

#### Next Steps (For both options)

4. **Set up environment:**
   ```bash
   # Windows PowerShell
   Copy-Item .env.example .env

   # Windows Command Prompt
   copy .env.example .env

   # Mac/Linux
   cp .env.example .env
   ```
   Edit `.env` file with your specific configuration values.

5. **Initialize R environment:**
   ```r
   install.packages("renv")
   renv::init()

   # Install your project-specific packages here, for example:
   # install.packages(c("dplyr", "ggplot2", "tidyr"))

   # After installing your packages, lock the versions:
   # renv::snapshot()
   ```

6. **Connect to your remote repository** (Option 2 only):
   ```bash
   git remote add origin https://github.com/your-username/your-project-name.git
   git push -u origin main
   ```

## Development Workflow

### Typical Project Workflow

1. **Start with data exploration:**
   - Place raw data in `data/raw/`
   - Create exploration notebooks in `notebooks/exploratory/`
   - Document initial findings

2. **Data processing:**
   - Write data cleaning scripts in `scripts/data_processing/`
   - Save processed data to `data/processed/`
   - Create reusable functions in `functions/`

3. **Analysis and modeling:**
   - Develop analysis scripts in `scripts/analysis/`
   - Build models in `scripts/modeling/`
   - Test model prototypes in `notebooks/prototypes/`
   - Save model artifacts in `models/testing/`

4. **Documentation and reporting:**
   - Create reports in `reports/`
   - Generate visualizations to `outputs/figures/`
   - Export summary tables to `outputs/tables/`

5. **Production deployment:**
   - Finalize deployment scripts in `scripts/deployment/`
   - Move validated models to `models/production/`
   - Document deployment in `docs/`

### Best Practices

- **Use version control**: Commit frequently with descriptive messages
- **Document everything**: README files, code comments, and methodology docs
- **Test your code**: Write unit tests in `tests/`
- **Manage dependencies**: Use `renv::snapshot()` to lock package versions, run `source("session_info.R")` to document your environment
- **Keep data secure**: Never commit sensitive data; use `.env` for credentials

## Environment Management & Reproducibility

This template includes:

- **`.env.example`** - Template for environment variables
- **`.gitignore`** - Comprehensive gitignore for R data science projects (includes AI agent configuration files for security)
- **`renv.lock.example`** - Example lockfile structure (replace with your actual `renv.lock`)
- **`session_info.R`** - Template script to document your R environment (customize as needed)
- **`renv`** - Use `renv::init()` and `renv::snapshot()` for dependency management

### Reproducibility Workflow

### 🚨 IMPORTANT - TEMPLATE FILES 🚨

**The files `renv.lock.example` and `session_info.R` are REFERENCE EXAMPLES only. NOT for direct use. You must:**

- ❌ **DO NOT use** `renv.lock.example` as your actual lockfile
- ✅ **Create your own** `renv.lock` with `renv::snapshot()` after installing YOUR packages
- ✅ **Customize** `session_info.R` according to YOUR project needs
- ✅ **Delete** `renv.lock.example` when you have your real `renv.lock`

1. **Initialize environment**: `renv::init()` - Creates your project-specific library
2. **Install your packages**: Add packages your project actually needs with `install.packages()`
3. **Lock dependencies**: `renv::snapshot()` - Creates/updates YOUR `renv.lock` file
4. **Remove example files**: Delete `renv.lock.example` when you have your real `renv.lock`
5. **Document environment**: Customize and run `session_info.R` for your project
6. **Share project**: Include YOUR `renv.lock` in version control (not the `renv/` folder)
7. **Restore environment**: Others run `renv::restore()` to recreate your exact environment

**Note**: `renv` manages R packages but not R version. Document your actual R version in your project README.
