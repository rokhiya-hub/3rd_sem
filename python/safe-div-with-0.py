def safe_division(numerator,denominator):
    try:
        result = numerator/denominator
        print(f"The result of {numerator}/{denominator} is : {result}")
    except ZeroDivisionError:
        print("Error: Cannot divide by zero! Attempted {numerator}/{denominator}")
    