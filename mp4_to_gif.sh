#!/usr/bin/env bash

set -ex


ffmpeg -y -ss 30 -t 30 -i viutv_test_bg.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 viutv_test_bg.gif &

ffmpeg -y -ss 30 -t 30 -i youtube.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 youtube.gif &

ffmpeg -y -ss 30 -t 30 -i kite.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 kite.gif &

wait


echo 'done'