# Program to demonstrate polymorphism using inheritance

# Base class
class Animal:
    """Base class representing a general animal."""

    def make_sound(self):
        """This method will be overridden by derived classes."""
        print("Some generic animal sound")

# Derived class 1
class Dog(Animal):
    def make_sound(self):
        print("Dog says: Woof! Woof!")

# Derived class 2
class Cat(Animal):
    def make_sound(self):
        print("Cat says: Meow!")

# Derived class 3
class Bird(Animal):
    def make_sound(self):
        print("Bird says: Tweet! Tweet!")

# --- Demonstrating Polymorphism ---
# Create objects of different classes
dog = Dog()
cat = Cat()
bird = Bird()

# Store all objects in a list
animals = [dog, cat, bird]

# Iterate through the list and call the make_sound() method
# Each object responds differently even though the same method is called
for animal in animals:
    animal.make_sound()