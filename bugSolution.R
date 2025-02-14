```R
# Improved code to handle cases where specified columns might not exist.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

# Check if all columns exist before subsetting
if (all(cols_to_select %in% names(df))) {
  subset_df <- df[, cols_to_select]
} else {
  missing_cols <- setdiff(cols_to_select, names(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "do not exist."))
}

print(subset_df)
```