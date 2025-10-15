# Import the pandas library
import pandas as pd

# --- (a) Create and display a one-dimensional array-like object (Series) ---
data = [10, 20, 30, 40, 50]   # Sample data
series = pd.Series(data)       # Create a Pandas Series

# Display the Series
print("Pandas Series:\n", series)

# --- (b) Convert the Pandas Series to a Python list and display its type ---
series_list = series.tolist()  # Convert Series to list
print("\nConverted Python list:", series_list)
print("Type of the converted object:", type(series_list))