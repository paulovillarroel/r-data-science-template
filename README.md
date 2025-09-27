# R Data Science Template

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