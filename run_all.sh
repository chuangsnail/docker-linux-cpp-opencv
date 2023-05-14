#!/bin/bash
sudo docker run -it --rm \
  -v "$(pwd)":/work_dir \
  image_linux_cpp_opencv \
  /bin/bash