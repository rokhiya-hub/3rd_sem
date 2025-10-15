# Program to calculate the nth Fibonacci number using a function

def fibonacci(n):
    """
    This function returns the nth Fibonacci number.
    Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, 13, ...
    """
    # Base cases: the first two Fibonacci numbers
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        # Recursive case: sum of the previous two Fibonacci numbers
        return fibonacci(n - 1) + fibonacci(n - 2)

# Take input from the user
num = int(input("Enter the position (n): "))

# Check if input is valid
if num < 0:
    print("Please enter a non-negative integer.")
else:
    # Call the function and display the result
    print(f"The {num}th Fibonacci number is:", fibonacci(num))