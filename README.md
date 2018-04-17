referred from https://hub.docker.com/r/hyper/docker-registry-web/ 
# execution
* generate cert key
* add registry-srv into insecure-registries
* ./run.sh
# log in web 
* initial admin/admin
* add user on web with all R/W permission
# test
## pull
```
$ docker pull 192.168.0.9:443/hello-seattle
Using default tag: latest
Please login prior to pull:
Username: xxxxx
Password: xxxxx
latest: Pulling from hello-seattle
Digest: sha256:ad53292b48aeb3e4e36a3e6094b41fd755fa5525696e5a864ae37555b1b677a8
Status: Image is up to date for 192.168.0.9:443/hello-seattle:latest
```
## push
```
$ docker push 192.168.0.9:443/hello-seattle
The push refers to a repository [192.168.0.9:443/hello-seattle]
392863b203fa: Preparing 
unauthorized: authentication required
$ docker login 192.168.0.9:443
Username: xxxxx
Password: xxxxx
Login Succeeded
$ docker push 192.168.0.9:443/hello-seattle
The push refers to a repository [192.168.0.9:443/hello-seattle]
392863b203fa: Layer already exists 
latest: digest: sha256:ad53292b48aeb3e4e36a3e6094b41fd755fa5525696e5a864ae37555b1b677a8 size: 524
```
