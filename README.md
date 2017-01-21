# Introduction #
HMM voice training template.

Noted: tested on ubuntu 14.04, gcc version below 5.0, other linux distribution should also works well.

# Installation #
* Install dependencies,
```
apt-get install -y --no-install-recommends g++-multilib make csh sox python zip automake realpath
PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Parallel::ForkManager'
```
* Install tools,
```
cd tools && make
```
* Run examples. Read `example/README.md`
