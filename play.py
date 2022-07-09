import io
import keyboard

import subprocess
import os
import sys
# import pyautogui
# import ahk
from PyQt5 import QtGui,QtWidgets,QtSvg
from PyQt5.QtWidgets import QApplication,QWidget,QLabel,QGridLayout,QPushButton,QSizePolicy
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtCore import QObject,QUrl,QRect








def subprocess_call(*args, **kwargs):
    #also works for Popen. It creates a new *hidden* window, so it will work in frozen apps (.exe).
    if IS_WIN32:
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags = subprocess.CREATE_NEW_CONSOLE | subprocess.STARTF_USESHOWWINDOW
        startupinfo.wShowWindow = subprocess.SW_HIDE
        kwargs['startupinfo'] = startupinfo
    retcode = subprocess.call(*args, **kwargs)
    return retcode


IS_WIN32 = 'win32' in str(sys.platform).lower()

# os.system(r"mpv 'H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg'")
# m =subprocess.Popen('mpv "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg"')
# m.wait()
subprocess_call('mpv "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg"')




if __name__=='__main__':
    keyboard.hook_key()
    pass
    # app = QtWidgets.QApplication(sys.argv)
    # viewer = QtSvg.QSvgWidget()

    # # viewer.load(sys.argv[1])
    # viewer.load("H:/ElectronProject/Autohotkey/AHKHabit/ae.svg")
    # viewer.show()

    # app.exec()