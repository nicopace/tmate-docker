tmate-docker
============

Tmate.io docker server

Run it as a priviledged image, as tmate requires some special capabilitites: CLONE_NEWIPC and CLONE_NEWNET

If you want to build it:
```
docker build -t tmate-docker .
```

If you want to use it:
```
sudo docker run --privileged -p 2222 -t tmate-docker
```

To know which port was tmate binded, run:
```
docker ps # this will show you the container id
docker port <container id> 2222
```
