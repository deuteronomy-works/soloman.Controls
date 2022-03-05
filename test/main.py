import sys
import os
from PyQt6.QtCore import QUrl
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    os.environ["QT_QUICK_BACKEND"] = "software"
    app = QGuiApplication(sys.argv)
    view = QQmlApplicationEngine()

    qu = QUrl('main.qml')
    view.load('main.qml')
    sys.exit(app.exec())
