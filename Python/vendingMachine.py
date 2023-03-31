
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
    # Implement the VendingMachine here
    pass
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    num_items, item_coins = map(int, input().split())
    machine = VendingMachine(num_items, item_coins)

    n = int(input())
    for _ in range(n):
        num_items, num_coins = map(int, input().split())
        try:
            change = machine.buy(num_items, num_coins)
            fptr.write(str(change) + "\n")
        except ValueError as e:
            fptr.write(str(e) + "\n")


    fptr.close()
