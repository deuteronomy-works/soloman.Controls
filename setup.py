# -*- coding: utf-8 -*-
import os
from setuptools import setup, find_packages

with open('README.md', 'r') as rm:
    long_desc = rm.read()

version = os.environ['GITHUB_REF'].split('/')[-1]

sta = 'Development Status :: 5 - Production/Stable'
bta = 'Development Status :: 4 - Beta'
dev_status = sta

ver = version.split('-')[0]
ver = ver.replace('v', '')

if 'beta' in version:
    beta = version.split('-')[1]
    beta = beta.split('beta.')[1]
    ver += f'b{beta}'
    dev_status = bta


setup(
    name='soloman.Controls',
    version=f'{ver}',
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
        f"{dev_status}",
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
