#! /bin/bash
#
# run.sh
# Copyright (C) 2017 truong-d <truong-d@truongd-ThinkPad-X1-Carbon-3rd>
#
# Distributed under terms of the MIT license.
#


. ./path.sh
here=`pwd`
stage=0
mkdir -p exp/data

if [[ $stage -le 0 ]]; then
    ./steps/make_feat.sh data_small exp/data || exit 1
fi

if [[ $stage -le 1 ]]; then
    ./steps/make_lab.sh data_small/txt exp/data || exit 1
fi

if [[ $stage -le 2 ]]; then
    perl ../src/scripts/Training.pl $here/Config_train.pm || exit 1
fi
