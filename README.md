# vue-full-tool
vuecli3(vue2+vuecli3)+axios+sass+elementUI-dynamic import
+docker+nginx+ssl
bus中央事件 Vue.prototype.$_bus = bus;
docker基础镜像 https://github.com/sclorg/nginx-container 


###容器化构建 与 CICD
### 容器化构建
####本地构建/启动 docker image
docker目录
ci.yml

####CICD流水线关联构建docker image与部署
1、构建：
在dockerLocal目录下，执行./build.sh
2、部署docker容器：
1）在dockerLocal/run目录下，修改docker-compose.yaml的image名称
2）在dockerLocal/run目录下，执行./run.sh

# 多页面配置 login.html  index.html
vue.config.js中配置

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```
