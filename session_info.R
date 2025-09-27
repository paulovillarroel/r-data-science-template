# Session Information Script
# Run this script to document your R environment for reproducibility
# Include this output in your project documentation

cat("=== R SESSION INFORMATION ===\n")
cat("Project:", basename(getwd()), "\n")
cat("Date:", Sys.Date(), "\n")
cat("Time:", Sys.time(), "\n\n")

# Display session information
sessionInfo()

# If using renv, also show renv status
if (requireNamespace("renv", quietly = TRUE)) {
  cat("\n=== RENV STATUS ===\n")
  try(renv::status(), silent = FALSE)
}

# Save session info to file
session_info <- sessionInfo()
saveRDS(session_info, file = "outputs/session_info.rds")
cat("\nSession info saved to: outputs/session_info.rds\n")