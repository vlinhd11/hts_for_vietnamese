# Introduction #
HMM voice training template.

Noted: tested on ubuntu 14.04, other linux distribution should also works well.

# Installation #
1. Install dependencies,

```
apt-get install -y --no-install-recommends g++-multilib g++-4.7 make csh sox python zip automake realpath
PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Parallel::ForkManager'
```

2. Install tools,

```
cd tools && make
```

3. Run examples. Read `example/README.md`
