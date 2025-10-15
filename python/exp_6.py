# Program to define a Car class with attributes and methods

class Car:
    """A class to represent a car."""

    # Constructor to initialize car attributes
    def __init__(self, make, model, year):
        self.make = make      # Brand of the car (e.g., Toyota)
        self.model = model    # Model name (e.g., Corolla)
        self.year = year      # Year of manufacture

    # Method to start the car
    def start(self):
        print(f"The {self.year} {self.make} {self.model} has started.")

    # Method to stop the car
    def stop(self):
        print(f"The {self.year} {self.make} {self.model} has stopped.")


# --- Main program ---
# Create an object (instance) of the Car class
my_car = Car("Toyota", "Corolla", 2022)

# Call the start and stop methods
my_car.start()
my_car.stop()