import numpy as np

# --- Create a sample NumPy array ---
arr = np.array([5, 10, 15, 20, 25, 30, 35])

# --- Specify a number to compare ---
num = 20

# --- Extract numbers less than the specified number ---
less_than_num = arr[arr < num]
print("Numbers less than", num, ":", less_than_num)

# --- Extract numbers greater than the specified number ---
greater_than_num = arr[arr > num]
print("Numbers greater than", num, ":", greater_than_num)

# --- Other useful NumPy methods demonstrations ---

# Maximum and minimum values in the array
print("Maximum value:", arr.max())
print("Minimum value:", arr.min())

# Index of maximum and minimum values
print("Index of maximum value:", arr.argmax())
print("Index of minimum value:", arr.argmin())

# Representation of the array
print("Array representation:", repr(arr))

# Count occurrences of each value (works best with integers)
# Note: bincount only works with non-negative integers
arr_int = np.array([1, 2, 2, 3, 3, 3, 4])
print("Bincount of arr_int:", np.bincount(arr_int))

# Unique elements in the array
print("Unique elements:", np.unique(arr_int))

import numpy as np

# --- Create a 2D NumPy array ---
arr = np.array([[5, 12, 7],
                [20, 3, 15],
                [8, 25, 10]])

#(b) To find the indices of the maximum and minimum numbers along the given axis of an array

# --- Find the index of the maximum number along each column (axis=0) ---
max_indices_column = arr.argmax(axis=0)
print("Indices of max numbers along columns (axis=0):", max_indices_column)

# --- Find the index of the minimum number along each column (axis=0) ---
min_indices_column = arr.argmin(axis=0)
print("Indices of min numbers along columns (axis=0):", min_indices_column)

# --- Find the index of the maximum number along each row (axis=1) ---
max_indices_row = arr.argmax(axis=1)
print("Indices of max numbers along rows (axis=1):", max_indices_row)

# --- Find the index of the minimum number along each row (axis=1) ---
min_indices_row = arr.argmin(axis=1)
print("Indices of min numbers along rows (axis=1):", min_indices_row)