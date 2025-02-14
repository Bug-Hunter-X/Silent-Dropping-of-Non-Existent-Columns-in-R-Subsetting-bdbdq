# R Subsetting Bug: Silent Column Dropping

This repository demonstrates a subtle bug in R's data frame subsetting mechanism. When you attempt to select columns using a character vector that includes non-existent column names, R silently drops the missing columns without warning or error. This can lead to unexpected behavior in your code, making it difficult to debug.

The `bug.R` file contains the buggy code, which showcases this behavior. The `bugSolution.R` file offers a robust solution that handles the situation gracefully.

## How to Reproduce

1. Clone this repository.
2. Open `bug.R` and run the code. Observe that the resulting data frame is missing the non-existent column, and no error or warning is produced. 
3. Open `bugSolution.R` and run the code. This improved version includes error handling to prevent the unexpected omission of columns.