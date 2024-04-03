#!/bin/bash

mkdir -p log
for model in resnet20 resnet32 resnet44 resnet56 resnet110 resnet1202
do
    echo "python train.py -net $model -gpu |& tee -a log/log_$model"
    python train.py -net $model -gpu |& tee -a log/log_$model
done