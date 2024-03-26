#!/bin/sh -e

mkdir -p project
cd tflite-micro/
python3 tensorflow/lite/micro/tools/project_generation/create_tflm_tree.py --print_src_files --print_dest_files --examples micro_speech ../project
cp tensorflow/lite/micro/tools/project_generation/Makefile ../project
cd ..

echo "Done"
