#!/bin/sh
JULIA_TAR="julia-0.6.2-linux-x86_64.tar.gz"
rm -rf $JULIA_TAR

DIR_NAME="julia_folder_tmp_ck"
mkdir $DIR_NAME

curl -L https://julialang-s3.julialang.org/bin/linux/x64/0.6/$JULIA_TAR | tar -xzf - -C $DIR_NAME --strip-components=1

sudo rm -rf /opt/julia
sudo cp -R $DIR_NAME /opt/julia
sudo ln -sfn /opt/julia/bin/julia /usr/bin/julia

rm -rf $DIR_NAME
rm -rf $JULIA_TAR

julia -v
