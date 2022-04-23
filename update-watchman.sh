#!/bin/bash
set -euo pipefail

WM_VERSION=v2022.04.11.00

rm -Rf vendor/watchman
wget -nv https://github.com/facebook/watchman/releases/download/$WM_VERSION/watchman-$WM_VERSION-linux.zip
unzip watchman-$WM_VERSION-linux.zip
rm watchman-$WM_VERSION-linux.zip
mv watchman-$WM_VERSION-linux vendor/watchman
