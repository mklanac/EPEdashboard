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
g120.write_parameter(2900, 100, 'f', 0) # enable drive
#g120encoder_speed = g120.read_parameter(61, 'f') # encoder speed r0061
for i in np.append(np.arange(0.25, 4.25, 0.25), np.arange(3.75, 0, -0.25)):
    time.sleep(5)
    print(i)
    g120.write_parameter(2930, i, "f", 0)
    
g120.write_parameter(2900, 0, 'f', 0) # disable drive