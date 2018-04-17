docker run -v $(pwd)/conf/registry-srv.yml:/etc/docker/registry/config.yml:ro \
            -v $(pwd)/conf/auth.cert:/etc/docker/registry/auth.cert:ro \
            -v $(pwd)/registry:/var/lib/registry:rw \
            -p 443:443 \
            --name registry-srv -d registry:2

docker run -v $(pwd)/conf/registry-web.yml:/conf/config.yml:ro \
           -v $(pwd)/conf/auth.key:/conf/auth.key \
           -v $(pwd)/db:/data \
           -it -p 8080:8080 --link registry-srv \
           --name registry-web -d hyper/docker-registry-web

