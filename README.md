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

# Trouble shooting #
If you have trouble with perl like this,
```
   perl: warning: Falling back to a fallback locale ("en_US.UTF-8").
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
	LANGUAGE = "en_US:en",
	LC_ALL = (unset),
	LC_TIME = "ja_JP.UTF-8",
	LC_CTYPE = "en_US.UTF-8",
	LC_MONETARY = "ja_JP.UTF-8",
	LC_ADDRESS = "ja_JP.UTF-8",
	LC_TELEPHONE = "ja_JP.UTF-8",
	LC_NAME = "ja_JP.UTF-8",
	LC_MEASUREMENT = "ja_JP.UTF-8",
	LC_IDENTIFICATION = "ja_JP.UTF-8",
	LC_NUMERIC = "ja_JP.UTF-8",
	LC_PAPER = "ja_JP.UTF-8",
	LANG = "en_US.UTF-8"
```

then, add the following lines to your `.bashrc` or `.zshrc`,
```
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
```
