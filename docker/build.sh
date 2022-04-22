#!/bin/bash

deck install nodejs-12.10.0
source $HOME/.deck/1.0/etc/bashrc
export PATH=$NODEJS_12_10_0_HOME:/bin:$PATH

REPO=iregistry.baidu-int.com
PROJECT=acg-acloud
IMG=workbench-ui

TAG=$(git rev-parse --short HEAD)-$(date '+%Y%m%d-%H%M')

DOCKER_IMAGE=$REPO/$PROJECT/$IMG:$TAG

echo "TAG: $TAG"
echo "DOCKER_IMAGE: $DOCKER_IMAGE"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILDROOT=$DIR/../

# 1.删除build与重新打包静态文件dist
cmd="rm -rf ../dist/ && npm install && npm run build"
echo "1.删除历史dist并重新构建dist..."
eval ${cmd}

# 2. 共享disk
mkdir -p output
cp -rf dist output/dist
cp -rf docker/conf/nginx.conf.template output/
cp -rf docker/entrypoint.sh output/
cp -rf docker/conf/nginx.conf output/

# 2.构建docker镜像
#cmd="docker build \
#  -t ${DOCKER_IMAGE} \
#  -f ${DIR}/Dockerfile ${BUILDROOT}"
#echo "2.构建docker镜像..."
#eval ${cmd}

# 3.推远程仓库
#cmd="docker push ${DOCKER_IMAGE}"
#echo "3.将docker推送远程仓库..."
#eval ${cmd}

#!docker build -t docker-reg.emotibot.com.cn:55688/my-vue-project:20181203 -f ./Dockerfile ../

