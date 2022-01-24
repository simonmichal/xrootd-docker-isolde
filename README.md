# Simple docker image for running a standalone XRootD server

1) Create the docker image: `build.sh`, this will create `xrootd/isolde` image (verify with `docker images`)
2) Start the container: `start_container.sh -e /export/dir`, this will start `xrdisolde` container (verify with `docker ps`), `/export/dir` is the volume to be exported
3) Start XRootD server: `start_xrootd.sh`, this will start XRootD server (verify with `docker exec xrdisolde systemctl status xrootd@isolde`), the XRootD server will bind to port 1094.

