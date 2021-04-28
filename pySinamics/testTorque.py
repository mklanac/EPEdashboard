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
g120.write_parameter(2930, 3.25, "f", 0)  # set torque
g120.write_parameter(2900, 100, 'f', 0) # enable drive
time.sleep(20) # grijanje
for i in np.arange(4, 0, -0.25):
    time.sleep(5)
    print(i)
    g120.write_parameter(2930, i, "f", 0)

time.sleep(5)   
g120.write_parameter(2900, 0, 'f', 0) # disable drive
g120.destroy()