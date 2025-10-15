# Program to demonstrate error handling for division by zero

try:
    # Take two numbers as input from the user
    numerator = float(input("Enter the numerator: "))
    denominator = float(input("Enter the denominator: "))

    # Try to perform the division
    result = numerator / denominator

    # Display the result if no error occurs
    print(f"The result of division is: {result}")

# Handle division by zero error
except ZeroDivisionError:
    print("Error: Division by zero is not allowed.")

# Handle invalid input (non-numeric values)
except ValueError:
    print("Error: Please enter valid numeric values.")