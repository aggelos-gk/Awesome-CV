#!/usr/bin/env bash
set -euo pipefail

make CC="${CC:-/home/aggelos/.local/texlive/2026/bin/x86_64-linux/lualatex}" cv.pdf
