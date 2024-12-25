```R
# This code attempts to subset a data frame based on a condition,
# but it contains an uncommon error related to how R handles logical indexing.

df <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))

# Incorrect subsetting
subset <- df[df$a == 2 | df$a == 3, ]

# The issue arises if df$a contains NA values. The following
# demonstrates a scenario where the subsetting fails unexpectedly.

df_na <- data.frame(a = c(1, 2, NA, 3), b = c(4, 5, 6, 7))

subset_na <- df_na[df_na$a == 2 | df_na$a == 3, ]

print(subset)
print(subset_na)
```