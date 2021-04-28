# This Python file uses the following encoding: utf-8
import sys
import os
import datetime
import time
from random import randrange
from pySinamics import sinamics
from pySinamics.sinamics_graph import graph


from PySide2.QtWidgets import QApplication
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal, QTimer, QUrl


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

        # QTimer - Run Timer
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.speedDialUpdate())
        self.g120 = sinamics.Sinamics()

    # Signal Set Name
    setName = Signal(str)

    # Signal Set Data
    printTime = Signal(str)

    # Signal Visible
    isVisible = Signal(bool)

    # Open File To Text Edit
    readText = Signal(str)

    # Signal Update Speed
    updateSpeed = Signal(int, str)

    # Text String
    textField = ""

    # Drive IP
    driveIP = ""

    # Open File
    @Slot(str)
    def openFile(self, filePath):
        file = open(QUrl(filePath).toLocalFile(), encoding="utf-8")
        text = file.read()
        file.close()
        print(text)
        self.readText.emit(str(text))

    # Read Text
    @Slot(str)
    def getTextField(self, text):
        self.textField = text

    # Write File
    @Slot(str)
    def writeFile(self, filePath):
        file = open(QUrl(filePath).toLocalFile(), "w")
        file.write(self.textField)
        file.close()
        print(self.textField)

    # Show / Hide Rectangle
    @Slot(bool)
    def showHideRectangle(self, isChecked):
        print("Is rectangle visible: ", isChecked)
        self.isVisible.emit(isChecked)

    # Set Timer Function
    def setTime(self):
        now = datetime.datetime.now()
        formatDate = now.strftime("Now is %H:%M:%S %p of %Y/%m/%d")
        print(formatDate)
        self.printTime.emit(formatDate)

    # Function Set Name To Label
    @Slot(str)
    def welcomeText(self, name):
        self.setName.emit("Welcome, " + name)

    # Set drive IP address
    @Slot(str)
    def setDriveIP(self, driveIP):
        self.driveIP = driveIP

    # Connect to drive
    @Slot()
    def connectToDrive(self):
        self.g120.connect(self.driveIP) # drive IP
        print("Connected to g120-->"+" Drive IP: "+self.driveIP)
        self.timer.start(100) # update speed

    # Enable drive
    @Slot()
    def enableDrive(self):
        self.g120.write_parameter(1001, 0, 'f') # set speed to 0 r/min
        self.g120.write_parameter(2900, 100, 'f', 0) # enable drive
        print("g120 enabled")

    # Disable drive
    @Slot()
    def disableDrive(self):
        self.timer.stop()
        print("g120 disabled")
        self.g120.write_parameter(2900, 0, 'f', 0) # disable drive

    # set reference speed
    @Slot(str)
    def setRefSpeed(self, speed):
        self.g120.write_parameter(1001, float(speed), 'f') # set speed
        #print("Setting speed") # DEBUG

    # Function speed update
    def speedDialUpdate(self):
        #speed = 1000 # DEBUG
        speed = abs(self.g120.read_parameter(21, 'f')) # encoder speed r0021
        self.updateSpeed.emit(speed, str(int(speed)))


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Get Context
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # Set App Extra Info
    app.setOrganizationName("Mario Klanac")
    app.setOrganizationDomain("fer")

    # Load QML File
    engine.load(os.path.join(os.path.dirname(__file__), "qml/splashScreen.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
