#!/usr/bin/env python3

import os,sys
import shutil
import subprocess

DL_URLS=[
  'https://youtu.be/dFf4AgBNR1E?t=36',
  'https://youtu.be/XHdcW2axwMk?t=68'
]


for url in DL_URLS:
  start = url.split('?')[1].split('=')[1]
  vid = url.split('/')[3].split('?')[0]
  output_gif_filename = vid+'_s'+start+'.gif'

  p_command = f'youtube-dl {url} -o temp.mp4'
  q_command = f'ffmpeg -y -ss {start} -t 15 -i temp.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 {output_gif_filename}'


  print(f'q_command: {q_command}')
  if (os.path.exists('temp.mp4')):
    os.remove('temp.mp4')

  p = os.system(p_command)
  q = os.system(q_command)

  print(f'done {url}')

# print(p)
