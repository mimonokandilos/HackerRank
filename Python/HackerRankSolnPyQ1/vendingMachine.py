
# create class: VendingMachine
# 1) consturctor VendingMachine(num_items, item_price)
# 2)method buy(req_items, money)
# if enough items to serve request and money given is suffiecient  return an integer dentoting the change given back
# if fewer items through excpretion not enough items 
# if there is enough item but not enough money through excpetion not enough coins

#!/bin/python3

import math
import os
import random
import re
import sys

class VendingMachine:
    def __init__(self, num_items, item_price):
        self.num_items = num_items
        self.item_price = item_price
    
    def buy(self, req_items, money):
        total_price = req_items * self.item_price
        if req_items > self.num_items:
            raise ValueError("Not enough items")
        elif money < total_price:
            raise ValueError("Not enough coins")
        else:
            change = money - total_price
            self.num_items -= req_items
            return change

if __name__ == '__main__':
    with open('input.txt', 'r') as f:
        num_items, item_coins = map(int, f.readline().strip().split())
        machine = VendingMachine(num_items, item_coins)

        n = int(f.readline().strip())
        for _ in range(n):
            num_items, num_coins = map(int, f.readline().strip().split())
            try:
                change = machine.buy(num_items, num_coins)
                print(change)
            except ValueError as e:
                print(e)

# In this example:

# The first line contains two integers, 5 and 10, representing the initial number of items in the vending machine and the price of each item, respectively.

# The second line contains a single integer, 4, representing the number of purchase attempts that will be made.

# The next four lines represent the purchase attempts. Each line contains two integers, num_items and num_coins, representing the number of items the customer wants to buy and the amount of money they have, respectively. The four purchase attempts in this example are:

# The customer wants to buy 2 items with 5 coins.
# The customer wants to buy 1 item with 2 coins.
# The customer wants to buy 4 items with 20 coins.
# The customer wants to buy 6 items with 10 coins.