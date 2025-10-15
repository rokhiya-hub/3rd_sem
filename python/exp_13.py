import pandas as pd
import numpy as np

# --- Sample dictionary corrected ---
exam_data = {
    'name': ['Anastasia', 'Dima', 'Katherine', 'James', 'Emily',
             'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'],
    'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19],
    'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1],
    'qualify': ['yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes']
}

# Corrected labels
labels = ['a','b','c','d','e','f','g','h','i','j']

# --- (a) Create and display DataFrame with index labels ---
df = pd.DataFrame(exam_data, index=labels)
print("DataFrame with custom index:\n", df)

# --- (b) Change name 'James' to 'Suresh' in 'name' column ---
df.loc[df['name'] == 'James', 'name'] = 'Suresh'
print("\nDataFrame after changing 'James' to 'Suresh':\n", df)

# --- (c) Insert a new column in existing DataFrame ---
# Example: adding a column 'grade' with default value 'A'
df['grade'] = ['A','B','A','C','B','A','B','C','B','A']
print("\nDataFrame after adding new column 'grade':\n", df)

# --- (d) Get list of DataFrame column headers ---
columns_list = df.columns.tolist()
print("\nList of column headers:", columns_list)