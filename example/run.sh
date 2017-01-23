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
    ./steps/make_feat.sh data exp/data || exit 1
fi

if [[ $stage -le 1 ]]; then
    ./steps/make_lab.sh data/txt_5k exp/data_5k || exit 1
fi

if [[ $stage -le 2 ]]; then
    perl ../src/scripts/Training.pl $here/Config_train.pm || exit 1
fi

if [[ $stage -le 3 ]]; then
    mkdir -p exp/gen
    mdl=exp/model/voices/qst001/ver1/aihoa.htsvoice
    for lab in `ls exp/data_gen/labels/full/*.lab`;
    do
        base=`basename $lab .lab`
        echo "Generating wav for $base --> exp/gen"
        hts_engine -b 0.4 -m $mdl $lab -ow exp/gen/$base.wav
    done
fi
