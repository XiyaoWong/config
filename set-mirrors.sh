#! /bin/bash

# --------------------------------
# pip
# --------------------------------
command -v pip > /dev/null
if [ $? == 0 ]; then
    echo "for pip"
    if [ ! -d "$HOME/.pip" ]; then
        mkdir "$HOME/.pip"
    fi
    pip_conf="$HOME/.pip/pip.conf"
    echo "[global]" > $pip_conf
    echo "index-url=http://mirrors.aliyun.com/pypi/simple" >> $pip_conf
    echo "/* extra-index-url=http://pypi.douban.com/simple */" >> $pip_conf
    echo "/*     https://pypi.tuna.tsinghua.edu.cn/simple */" >> $pip_conf
    echo "/*     http://pypi.mirrors.ustc.edu.cn/simple */" >> $pip_conf
    echo "[install]" >> $pip_conf
    echo "trusted-host=pypi.douban.com" >> $pip_conf
    echo "    mirrors.aliyun.com" >> $pip_conf
    echo "    pypi.tuna.tsinghua.edu.cn" >> $pip_conf
    echo "    pypi.mirrors.ustc.edu.cn" >> $pip_conf
    echo "[freeze]" >> $pip_conf
    echo "timeout = 10" >> $pip_conf
fi


# --------------------------------
# go
# --------------------------------
command -v go > /dev/null
if [ $? == 0 ]; then
    echo "for go proxy"
    go env -w GO111MODULE=auto
    go env -w GOPROXY=https://goproxy.io,direct
fi


# --------------------------------
# npm
# --------------------------------
command -v npm > /dev/null
if [ $? == 0 ]; then
    echo "for npm"
    npm config set registry https://registry.npm.taobao.org
fi

# --------------------------------
# yarn
# --------------------------------
command -v yarn > /dev/null
if [ $? == 0 ]; then
    echo "for yarn"
    yarn config set registry https://registry.npm.taobao.org
fi

# --------------------------------
# docker
# --------------------------------
