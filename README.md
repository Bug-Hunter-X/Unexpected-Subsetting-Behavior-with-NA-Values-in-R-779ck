# Unexpected Subsetting Behavior with NA Values in R

This repository demonstrates an uncommon error in R related to subsetting data frames when `NA` values are present in the conditions used for subsetting. The `bug.R` file shows the problematic code, while `bugSolution.R` provides a corrected version.

The core issue stems from how R handles logical operations involving `NA`.  Standard logical operators (`==`, `|`, `&`) yield `NA` when an operand is `NA`. This can lead to unexpected results when used for subsetting.

The solution shows how to use the `is.na()` function to explicitly handle `NA` values and ensure the correct subsetting behavior.
