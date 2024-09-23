# build
* 檢查docker環境是否ready
```
docker version
docker context list
docker context use default
wsl -l -v
wsl --set-default rancher-desktop
```
* 匯出憑證(已匯出, 不用再執行)
```
.\export_crt.ps1
# FG4H1FT922900264.cer
# FG4H1FT922900264.crt
```
* 建 Image: kiloath\korust:latest
```
~\korice\square\build\build_korust.ps1
docker run -it --rm kiloath/korust:latest bin/bash
rustup show
exit
```
* 上傳
```
docker login
docker push kiloath\korust
docker tag kiloath/korust myreg2:5000/korust
docker push myreg2:5000/korust:latest
```
