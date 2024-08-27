# korust01_00
* 只提供 latest
```
~\korice\square\workspace\korust\korust_build\.devcontainer\rebuild_korust.ps1
docker login
docker push kiloath\korust
docker tag kiloath/korust myreg2:5000/korust
docker push myreg2:5000/korust:latest
```
