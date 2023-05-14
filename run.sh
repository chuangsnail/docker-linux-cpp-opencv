#!/bin/bash
sudo docker run -it --rm \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -v "$(pwd)"/data:/work_dir/data \
  -v "$(pwd)"/code:/work_dir/work \
  -v "$(pwd)"/output:/work_dir/output \
  image_linux_cpp_opencv \
  /bin/bash