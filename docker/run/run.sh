cmd="docker-compose -f docker-compose.yaml up --force-recreate -d wsx-ui"
echo $cmd
eval $cmd

# docker run -itd -p 9991:80 --env OPEN_API='10.10.10.10:8397' --env HTTP_PORT='9991'  --restart=always --name="wsx-ui" iregistry.xxxx.com/aaa-cloud/wsx-ui:1289d72-20210831-1125

