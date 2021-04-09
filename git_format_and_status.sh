#!/bin/bash
flutter pub run import_sorter:main
flutter format lib
clear
git add .
git status