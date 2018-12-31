#!/bin/bash
cd ../../../../
cd system/sepolicy
git apply --ignore-space-change --ignore-whitespace -v ../../device/meizu/m2mini/patches/0001-Revert-back-to-version-29.patch
cd ../..
echo Patches Applied Successfully!
