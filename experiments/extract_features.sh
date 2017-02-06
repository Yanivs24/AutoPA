#!/bin/bash

# This file is part of AutoPA - automatic extraction of pre-aspiration 
# from speech segments in audio files.
#
# Copyright (c) 2016 Yaniv Sheena

# Description: extract features from all the examples in a given config files

min_val=-50
max_val=60
z
# export bin directory
export PATH=$PATH:$(pwd)/../AutoPA/bin


auto_pa_extract_features.py --window_min $min_val  --window_max $max_val --pa_tier bell --pa_mark pre config/PreaspirationTrainTgList.txt config/PreaspirationTrainWavList.txt extracted_features/input.txt extracted_features/feature_names.txt extracted_features/labels.txt $(pwd)/extracted_features/feature_files