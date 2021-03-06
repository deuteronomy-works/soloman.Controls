# -*- coding: utf-8 -*-
from setuptools import setup, find_packages

with open('README.md', 'r') as rm:
    long_desc = rm.read()

setup(
    name='soloman.Controls',
    version='1.0',
    description='For the love of python and qml',
    long_description=long_desc,
    long_description_content_type='text/markdown',
    install_requires=['PyQt5'],
    keywords="qml, qml controls, soloman, advanced qml, pyqt5",
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
    packages=['PyQt5'],
    package_data={'PyQt5': ['Qt/qml/soloman/Controls/qmldir', 'Qt/qml/soloman/Controls/*.qml']},
)
