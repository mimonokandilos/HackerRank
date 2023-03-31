#Implement two classes:

#-----Rectangle-----

# The constructor for rectangle must take two arguments that denote the lengths of the rectangle's sides.
# The class must have an area that returns the area of the rectangle.

#-----Circle--------

# The constructor for circle must take one argument that denotes the radius of the circle.
# The circle class must have an area method that returns the area of the circle. To implement
# the area method, use a precise Pi value, preferably the constant math.pi.

import math

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

#if __name__ == '__main__': 
