#!/bin/sh

SRCCONF=/workspace/`dirname $0`/src.conf

sudo cp ${SRCCONF} /etc
env \
	JFLAG=${BUILDER_JFLAG} \
	TARGET=amd64 \
	TARGET_ARCH=amd64 \
	SRCCONF=${SRCCONF} \
	sh -x freebsd-ci/scripts/build/build-world-kernel.sh
