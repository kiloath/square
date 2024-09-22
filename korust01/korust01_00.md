# korust01_00
* 檢查
```
docker version
docker context list
docker context use default
wsl -l -v
wsl --set-default rancher-desktop
```
* 建 Image: kiloath\korust
```
~\korice\square\workspace\korust\korust_build\.devcontainer\rebuild_korust.ps1
docker login
docker push kiloath\korust
docker tag kiloath/korust myreg2:5000/korust
docker push myreg2:5000/korust:latest
```
* 更新
```
docker tag kiloath/korust:latest kiloath/korust:1.0
docker push kiloath\korust:1.0
~\korice\square\workspace\korust\korust_build_latest\korust_build\.devcontainer\rebuild_korust.ps1
```
