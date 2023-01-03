##    
* [Dockerize Cpp Dev env](https://ddanilov.me/dockerized-cpp-build

## History
* When "docker desktop" installed properly, docker daemon works file, docker build works
*




```bash
❯ make
docker build -t cpp-docker-env:1 -f cpp_docker_file .
[+] Building 185.3s (8/8) FINISHED
 => [internal] load build definition from cpp_docker_file                                                                      0.0s
 => => transferring dockerfile: 655B                                                                                           0.0s
 => [internal] load .dockerignore                                                                                              0.0s
 => => transferring context: 2B                                                                                                0.0s
 => [internal] load metadata for docker.io/library/ubuntu:18.04                                                                0.9s
 => [auth] library/ubuntu:pull token for registry-1.docker.io                                                                  0.0s
 => [1/3] FROM docker.io/library/ubuntu:18.04@sha256:daf3e62183e8aa9a56878a685ed26f3af3dd8c08c8fd11ef1c167a1aa9bd66a3          1.7s
 => => resolve docker.io/library/ubuntu:18.04@sha256:daf3e62183e8aa9a56878a685ed26f3af3dd8c08c8fd11ef1c167a1aa9bd66a3          0.0s
 => => sha256:daf3e62183e8aa9a56878a685ed26f3af3dd8c08c8fd11ef1c167a1aa9bd66a3 1.41kB / 1.41kB                                 0.0s
 => => sha256:71db8b14ce66ee73035e9c72fc23926de44f66351eb0d4cc31d983e1fca5481e 529B / 529B                                     0.0s
 => => sha256:b50746e2e98165ba7918ee66c4c99760094006e0af161f766a8ea2cf34ce3218 1.48kB / 1.48kB                                 0.0s
 => => sha256:87acad9590b042ceb59687d498c396e9344cf2e381923fecd299555966b14975 23.73MB / 23.73MB                               1.3s
 => => extracting sha256:87acad9590b042ceb59687d498c396e9344cf2e381923fecd299555966b14975                                      0.3s
 => [2/3] RUN apt-get update && apt-get -y --no-install-recommends install     build-essential     clang     cmake     gdb    20.2s
 => [3/3] RUN cd /root &&     wget --no-check-certificate --quiet         https://boostorg.jfrog.io/artifactory/main/releas  161.2s
 => exporting to image                                                                                                         1.2s
 => => exporting layers                                                                                                        1.2s
 => => writing image sha256:9c4e3eeb66afdef8af544934b1b423493d1b3349a9d893e44ca3ae4283c0dcfe                                   0.0s
 => => naming to docker.io/library/cpp-docker-env:1                                                                            0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
Build CPP Dev Env Docker
❯ ls
cpp_docker_file  makefile  README.md

```


