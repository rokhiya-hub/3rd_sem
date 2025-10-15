# Program to find the largest number in a list

# Step 1: Take input from the user as a list of numbers separated by spaces
numbers = input("Enter numbers separated by spaces: ")

# Step 2: Split the string input into individual number strings and convert them to integers
num_list = [int(num) for num in numbers.split()]

# Step 3: Use the built-in max() function to find the largest number
largest = max(num_list)

# Step 4: Display the largest number
print("The largest number is:", largest)