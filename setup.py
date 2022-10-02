# -*- coding: utf-8 -*-
from setuptools import setup, find_packages

with open('README.md', 'r') as rm:
    long_desc = rm.read()

setup(
    name='soloman.Controls',
    version='3.1.1',
    description='For the love of python and qml',
    long_description=long_desc,
    long_description_content_type='text/markdown',
    keywords="qml, qml controls, soloman, pyside6, pyqt6, pyside2, pyqt5",
    url='https://github.com/deuteronomy-works/soloman',
    author='Amoh - Gyebi Godwin Ampofo Michael',
    author_email='amohgyebigodwin@gmail.com',
    project_urls={
        "Bug Tracker": "https://github.com/deuteronomy-works/soloman/issues/",
        "Documentation": "https://github.com/deuteronomy-works/soloman/wiki/",
        "Source Code": "https://github.com/deuteronomy-works/soloman/",
    },
    classifiers = [
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Development Status :: 5 - Production/Stable",
        "Environment :: Other Environment",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: Software Development :: Libraries :: Python Modules"
    ],
    packages=['PyQt6', 'PyQt5', 'PySide2', 'PySide6'],
    package_data={
        'PyQt5': ['Qt5/qml/soloman/Controls/qmldir', 'Qt5/qml/soloman/Controls/*.qml'],
        'PyQt6': ['Qt6/qml/soloman/Controls/qmldir', 'Qt6/qml/soloman/Controls/*.qml'],
        'PySide2': ['qml/soloman/Controls/qmldir', 'qml/soloman/Controls/*.qml'],
        'PySide6': ['qml/soloman/Controls/qmldir', 'qml/soloman/Controls/*.qml']
        },
)
