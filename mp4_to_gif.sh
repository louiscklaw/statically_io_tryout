#!/usr/bin/env bash

set -ex


ffmpeg -ss 30 -t 3 -i viutv_test_bg.mp4 -vf "fps=10,scale=960:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 viutv_test_bg.gif

ffmpeg -ss 30 -t 3 -i youtube.mp4 -vf "fps=10,scale=960:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 youtube.gif
