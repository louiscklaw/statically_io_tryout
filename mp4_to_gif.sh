#!/usr/bin/env bash

set -ex


# ffmpeg -y -ss 30 -t 30 -i viutv_test_bg.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 viutv_test_bg.gif &

# ffmpeg -y -ss 30 -t 30 -i youtube.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 youtube.gif &

# ffmpeg -y -ss 30 -t 30 -i kite.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 kite.gif &

# ffmpeg -y -ss 30 -t 20 -i hong_kong_nightview.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 hong_kong_nightview.gif &

# ffmpeg -y -ss 30 -t 15 -i japan_university.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 japan_university.gif &


# ffmpeg -y -ss 30 -t 15 -i japan_university2.webm -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 japan_university2.gif &

# youtube-dl https://www.youtube.com/watch\?v\=JUdlX4Eia2o
ffmpeg -y -ss 30 -t 15 -i cat.webm -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 cat.gif &


# https://youtu.be/EyFsv8o12EY?t=17
# https://youtu.be/EyFsv8o12EY?t=33
# https://youtu.be/EyFsv8o12EY?t=120
# https://youtu.be/EyFsv8o12EY?t=190
# https://youtu.be/EyFsv8o12EY?t=265
# https://youtu.be/EyFsv8o12EY?t=326
# https://youtu.be/EyFsv8o12EY?t=464
# https://youtu.be/EyFsv8o12EY?t=510
# https://youtu.be/pG5LTUJskSg?t=480
# https://youtu.be/901DwbfHsBg?t=400
# https://youtu.be/901DwbfHsBg?t=416
# https://youtu.be/P2smrarJDdo?t=420
# https://youtu.be/FaxRtOb4S9o?t=344
# https://youtu.be/FaxRtOb4S9o?t=382
# https://youtu.be/FaxRtOb4S9o?t=397
# https://youtu.be/FaxRtOb4S9o?t=537
# https://youtu.be/0T0xFp5vbYg?t=298
# https://youtu.be/0T0xFp5vbYg?t=484
# https://youtu.be/QFxe8ko-n8A?t=73
# https://youtu.be/QFxe8ko-n8A?t=184
# https://youtu.be/QFxe8ko-n8A?t=384

youtube-dl https://youtu.be/QFxe8ko-n8A?t=384 -o "helloworld.mp4"

ffmpeg -y -ss 384 -t 15 -i helloworld.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 test.gif &

wait


echo 'done'