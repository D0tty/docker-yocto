docker-yocto
=================

## About

This is an updated fork of [this repository](https://github.com/coldnew/docker-yocto)

It contains a Dockerfile to generate a docker image that I use for building the yocto images.

I use the script [yocto-build.sh](https://raw.githubusercontent.com/D0tty/docker-yocto/master/yocto-build.sh) to switch yocto building environment so I can use docker to build the [Yocto project](https://www.yoctoproject.org) instead of install a ubuntu as VM.

## Setting up

First download the [yocto-build.sh](https://raw.githubusercontent.com/D0tty/docker-yocto/master/yocto-build.sh) as `~/bin/yocto-build`

```sh
curl https://raw.githubusercontent.com/D0tty/docker-yocto/master/yocto-build.sh > ./yocto-build
sudo mv yocto-build /bin/yocto-build
sudo chmod +x ~/bin/yocto-build
```

## Basic Usage

The first time you need to specify a working directory.

For example, if I want to build `yocto` at `/home/dotty/school/lirt/poky` then:

```sh
yocto-build --workdir /home/dotty/school/lirt/poky /home/dotty/school/lirt/sdk
```

If you have a look at the script, this command will create a new container with the working directory mounted as a volume in `/yocto` and you will be in the context of the started container.

You can pass an optional argument to specify a sdk directory to the container. This directory will be mounted in `/opt/poky` inside the container

## Resume a stoped configured container

If you want to resume (restart) a previously configured container you can use

```sh
yocto-build --resume
```

## Spawn a new shell

If you want to spawn a new shell in another terminal, you can use

```sh
yocto-build --shell
```

## Remove the container

This script only support *ONLY ONE CONTAINER*, so If you want to change the working directory, you should remove it first, remove a container is easy, just use following command:

```sh
yocto-build --rm
```

## Upgrade script

Upgrade this script is easy, just type

```sh
yocto-build --upgrade
```

## Pull new docker container

To pull new docker image, just type

```sh
yocto-build --pull
```

## Todo

* Add a new mount option for the Xenomai SDK

## Maintainer

* Thomas `Dotty` Michelot -  <thomas.michelot@epita.fr> 
