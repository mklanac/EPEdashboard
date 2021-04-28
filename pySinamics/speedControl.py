# -*- coding: utf-8 -*-
"""
Created on Sat Jan 16 22:09:14 2021

@author: Admin
"""

import time
import numpy as np
import sinamics
g120 = sinamics.Sinamics()
g120.connect('192.168.0.1') # drive IP
g120.write_parameter(1001, 0, 'f') # set speed
g120.write_parameter(2900, 100, 'f', 0) # enable drive
time.sleep(5) # grijanje
for i in np.arange(1500, 100, -100):
    time.sleep(1)
    print(i)
    g120.write_parameter(1001, i, 'f') # set speed

time.sleep(5)   
g120.write_parameter(2900, 0, 'f', 0) # disable drive
g120.destroy()