#!/usr/bin/env bash

# create directories to store results locally
dir='try_seq2seq'
mkdir -p $dir'/corpora_processed/'
mkdir -p $dir'/words_index/'
mkdir -p $dir'/w2v_models/'
mkdir -p $dir'/nn_models/'
mkdir -p $dir'/results/'
#chown -R "$USER" $dir

# install required packages
pip install -r requirements.txt

# build and install seq2seq package
cd $dir
git clone https://github.com/farizrahman4u/seq2seq.git
cd seq2seq
python setup.py build
python setup.py install
