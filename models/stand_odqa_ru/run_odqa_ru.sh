#!/bin/bash
source ./env/bin/activate &&
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/ &&
nohup python3.6 -m deeppavlov.deep riseapi DeepPavlov/deeppavlov/configs/odqa/ru_odqa_infer_wiki.json > ./stand_odqa_ru.log 2>&1 &