# Program to demonstrate inheritance in Python

# Base class
class Animal:
    """Base class representing a general animal."""

    def __init__(self, name):
        self.name = name

    def speak(self):
        """Generic method — meant to be overridden by subclasses."""
        print("This animal makes a sound.")

    def eat(self):
        """Common behavior for all animals."""
        print(f"{self.name} is eating.")

# Derived class 1
class Dog(Animal):
    """Derived class representing a Dog."""

    def speak(self):
        print(f"{self.name} says: Woof! Woof!")

# Derived class 2
class Cat(Animal):
    """Derived class representing a Cat."""

    def speak(self):
        print(f"{self.name} says: Meow!")

# Derived class 3
class Cow(Animal):
    """Derived class representing a Cow."""

    def speak(self):
        print(f"{self.name} says: Moo!")

# --- Main program ---
# Create objects of each class
dog = Dog("Buddy")
cat = Cat("Whiskers")
cow = Cow("Daisy")

# Call methods
dog.speak()
dog.eat()

cat.speak()
cat.eat()

cow.speak()
cow.eat()