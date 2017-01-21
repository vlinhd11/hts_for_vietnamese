#! /bin/bash
#
# run.sh
# Copyright (C) 2016 truong-d <truong-d@truongd-ThinkPad-X1-Carbon-3rd>
#
# Distributed under terms of the MIT license.
#

source Config.cfg

BYTEPERFRAME=`expr 4 \* \( $MGCWINDIM + $LF0WINDIM \)`
wav=$1
index=$2
datadir=$3
subdir=$4
lf0dir=$datadir/lf0/$subdir/
mgcdir=$datadir/mgc/$subdir/
cmpdir=$datadir/cmp/$subdir/
base=`basename $wav .wav`
raw=/tmp/${index}.raw
sox $wav $raw || exit 1

echo "MinF0: $file_minf0 MaxF0: $file_maxf0"
x2x +sf $raw | pitch -H $file_maxf0 -L $file_minf0 -p $fs -s $SAMPKHZ -o 2 > $lf0dir/${base}.lf0 || exit 1
x2x +sf $raw | frame -l $fl -p $fs  | window -l $fl -L $FFTLEN -w $WINDOWTYPE -n $NORMALIZE | \
    mcep -a $FREQWARP -m $MGCORDER -l $FFTLEN -e 1.0E-08 > $mgcdir/${base}.mgc || exit 1

if [[ -n "`nan $lf0dir/${base}.lf0`" ]]; then
    echo " Failed to extract f0 features from $base";
fi

if [[ -n "`nan $mgcdir/${base}.mgc`" ]]; then
    echo " Failed to extract mgc features from $base";
fi

perl ../window.pl $MGCDIM $mgcdir/${base}.mgc win/mgc.win1 win/mgc.win2 win/mgc.win3 > /tmp/${index}.mgc.temp || exit 1
perl ../window.pl $LF0DIM $lf0dir/${base}.lf0 win/lf0.win1 win/lf0.win2 win/lf0.win3 > /tmp/${index}.lf0.temp || exit 1
merge +f -s 0 -l $LF0WINDIM -L ${MGCWINDIM} /tmp/${index}.mgc.temp < /tmp/${index}.lf0.temp > /tmp/${index}.cmp || exit 1
perl ../addhtkheader.pl $SAMPFREQ $fs $BYTEPERFRAME 9 /tmp/${index}.cmp > $cmpdir/${base}.cmp || exit 1
rm $raw /tmp/${index}.mgc.temp /tmp/${index}.lf0.temp /tmp/${index}.cmp
