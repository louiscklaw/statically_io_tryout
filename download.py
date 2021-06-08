#!/usr/bin/env python3

import os,sys
import shutil
import subprocess

DL_URLS=[
  'https://youtu.be/0T0xFp5vbYg?t=298',
  'https://youtu.be/0T0xFp5vbYg?t=484',
  'https://youtu.be/901DwbfHsBg?t=400',
  'https://youtu.be/901DwbfHsBg?t=416',
  'https://youtu.be/EyFsv8o12EY?t=120',
  'https://youtu.be/EyFsv8o12EY?t=17',
  'https://youtu.be/EyFsv8o12EY?t=190',
  'https://youtu.be/EyFsv8o12EY?t=265',
  'https://youtu.be/EyFsv8o12EY?t=326',
  'https://youtu.be/EyFsv8o12EY?t=33',
  'https://youtu.be/EyFsv8o12EY?t=464',
  'https://youtu.be/EyFsv8o12EY?t=510',
  'https://youtu.be/FaxRtOb4S9o?t=344',
  'https://youtu.be/FaxRtOb4S9o?t=382',
  'https://youtu.be/FaxRtOb4S9o?t=397',
  'https://youtu.be/FaxRtOb4S9o?t=537',
  'https://youtu.be/P2smrarJDdo?t=420',
  'https://youtu.be/pG5LTUJskSg?t=480',
  'https://youtu.be/QFxe8ko-n8A?t=184',
  'https://youtu.be/QFxe8ko-n8A?t=384',
  'https://youtu.be/QFxe8ko-n8A?t=73',
]


for url in DL_URLS:
  start = url.split('?')[1].split('=')[1]
  vid = url.split('/')[3].split('?')[0]
  output_gif_filename = vid+'_s'+start+'.gif'
  p_command = f'youtube-dl {url} -o temp.mp4'
  q_command = f'ffmpeg -y -ss {start} -t 15 -i temp.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 {output_gif_filename}'


  print(f'q_command: {q_command}')
  p = os.system(p_command)
  q = os.system(q_command)

  print(f'done {url}')

# print(p)
