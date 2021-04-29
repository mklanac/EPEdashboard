# EPEdashboard


EPEdashboard is a modern user interface with login (username=user, password=root) created using [Qt Design Studio](https://www.qt.io/design). EPE dashboard contains a [class definition](https://github.com/ggjmI/python-sinamics) for control/monitoring of SINAMICS inverters via TCP/IP using application layer [S7 protocol](https://wiki.wireshark.org/S7comm). For this, it utilizes the [python-snap7 library](https://python-snap7.readthedocs.io).

## Running the EPEdashboard

[![Watch the VIDEO](https://user-images.githubusercontent.com/51490354/116513182-7a60f700-a8c9-11eb-8359-c9acd6eaa965.png)](https://youtu.be/0JDm4hGQshk)


## Setting up the Snap7 library
If you follow these steps you will be able to control the speed of the motor using the EPEdashboard GUI and PROFINET.

* Step 1

Inside Starter or TIA portal

Set both signal sources for OFF2 (p0844 and p0845) to 1:
p844[0] = 1
p844[1] = 1

p845[0] = 1
p845[1] = 1

Set both signal sources for OFF3 (p0848 and p0849) to 1:
p848[0] = 1
p848[1] = 1

p849[0] = 1
p849[1] = 1

Set the enable for the ramp-up function generator
p1140[0] = 1
p1140[1] = 1

p1141[0] = 1
p1141[1] = 1

Set the setpoint value enable
p1142[0] = 1
p1142[1] = 1

Set the parameters for the ON/OFF command
p0840[0] = 2094.0 CO/BO
p0840[1] = 2094.0 CO/BO

p2099[0] = p2900[0]
p2099[1] = 0


* Step 2 

Copy folder "EPEdashboard\pySinamics\Snap7 instructions\Snap7" to C drive and the copied folder ("C:\Snap7") to the PATH


* Step 3

Run python (Python 3) script "DCterecenje.py" to test the Snap7 library
