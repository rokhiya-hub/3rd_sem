# Import NumPy library
import numpy as np

# --- (a) Get help on the add function ---
print("Help on np.add function:")
help(np.add)  # This will display documentation for the add function

# --- Creating arrays ---
arr1 = np.array([1, 2, 3, 4])
arr2 = np.array([4, 3, 2, 1])

print("\nArray 1:", arr1)
print("Array 2:", arr2)

# --- Adding arrays ---
sum_arr = np.add(arr1, arr2)
print("Sum of arrays:", sum_arr)

# --- Comparison operations ---
print("arr1 > arr2:", np.greater(arr1, arr2))
print("arr1 >= arr2:", np.greater_equal(arr1, arr2))
print("arr1 < arr2:", np.less(arr1, arr2))
print("arr1 <= arr2:", np.less_equal(arr1, arr2))
print("arr1 == arr2:", np.equal(arr1, arr2))

# --- Check if all elements satisfy a condition ---
print("Are all elements in arr1 greater than 0?", np.all(arr1 > 0))

# --- Check if arrays are almost equal ---
arr3 = np.array([1.0, 2.001, 3.0, 4.0])
print("Are arr1 and arr3 almost equal?", np.allclose(arr1, arr3, rtol=0.01))

# --- Create arrays of zeros and ones ---
zeros_arr = np.zeros(5)
ones_arr = np.ones(5)
print("Array of zeros:", zeros_arr)
print("Array of ones:", ones_arr)

# --- Create array using linspace ---
linspace_arr = np.linspace(0, 10, 5)  # 5 evenly spaced numbers from 0 to 10
print("Linspace array:", linspace_arr)

# --- Convert NumPy array to Python list ---
list_from_arr = arr1.tolist()
print("Array converted to list:", list_from_arr)

# --- Display info (using dtype and shape as NumPy does not have a direct info() like pandas) ---
print("Array info - dtype:", arr1.dtype, ", shape:", arr1.shape)

#(b) To test whether none of the elements of a given array is zero

# Create a sample array
arr = np.array([1, 2, 3, 4, 5])

# Check whether none of the elements is zero
# This means all elements are NOT equal to zero
none_zero = np.all(arr != 0)

print("Array:", arr)
print("None of the elements is zero?", none_zero)