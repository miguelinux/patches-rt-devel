#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

rt_url=https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt/5.4/

#serie_file=$(curl --fail --silent ${rt_url} | grep tar.xz | cut -f 2 -d \" \
                #| sort -k 1.13nbr | head -n 1)

#echo ${serie_file}

#curl --fail --silent -LO ${rt_url}/${serie_file}


#https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt/5.4/

grep -v ^# p/series | grep . > /tmp/ss

for m in $(cat /tmp/ss) ; do git am /home/git/patches-rt-devel/p/$m ; done
