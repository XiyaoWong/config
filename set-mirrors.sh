#! /bin/bash

# --------------------------------
# pip
# --------------------------------
command -v pip > /dev/null
if [ $? == 0 ]; then
    echo "for pip"
    pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
    echo "=========================="
fi

# --------------------------------
# go
# --------------------------------
command -v go > /dev/null
if [ $? == 0 ]; then
    echo "for go proxy"
    go env -w GO111MODULE=auto
    go env -w GOPROXY=https://goproxy.io,direct
    echo "=========================="
fi


# --------------------------------
# npm
# --------------------------------
command -v npm > /dev/null
if [ $? == 0 ]; then
    echo "for npm"
    npm config set registry https://registry.npm.taobao.org
    echo "=========================="
fi

# --------------------------------
# yarn
# --------------------------------
command -v yarn > /dev/null
if [ $? == 0 ]; then
    echo "for yarn"
    yarn config set registry https://registry.npm.taobao.org
    echo "=========================="
fi

# --------------------------------
# ruby(gem)
# --------------------------------
command -v gem > /dev/null
if [ $? == 0 ]; then
    echo "for ruby(gem)"
    gem sources --remove https://rubygems.org/
    gem sources -a https://mirrors.aliyun.com/rubygems/
    echo "=========================="
fi

# --------------------------------
# docker
# --------------------------------
