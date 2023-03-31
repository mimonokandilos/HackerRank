#Implement two classes:
# rectangle: constructor= must take two args that denote length of sides
# class= must have an area method returns area of the rectangle
# circle constructor= one arg that denotes the radius of the circle
# class=method returns the area of circle use precise pi constant math.pi

#-----Rectangle-----

# The constructor for rectangle must take two arguments that denote the lengths of the rectangle's sides.
# The class must have an area that returns the area of the rectangle.

#-----Circle--------

# The constructor for circle must take one argument that denotes the radius of the circle.
# The circle class must have an area method that returns the area of the circle. To implement
# the area method, use a precise Pi value, preferably the constant math.pi.

#!/bin/python

import math
import os
import random
import re
import sys

class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width 
    
    def area(self):
        return self.length * self.width

class Circle:
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return math.pi * (self.radius ** 2)

if __name__ == '__main__':
    # Create a Rectangle object with length 5 and width 10
    rect = Rectangle(5, 10)
    # Compute and print the area of the rectangle
    rect_area = rect.area()
    print(f"Rectangle area: {rect_area}")
    
    # Create a Circle object with radius 3
    circ = Circle(3)
    # Compute and print the area of the circle
    circ_area = circ.area()
    print(f"Circle area: {circ_area}")
