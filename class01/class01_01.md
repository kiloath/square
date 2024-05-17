```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\korust -r -fo -ea si
ni ~\korice\korust -i d -f | cd
code .
```
> * copy korust
```
export_crt.ps1
docker build -t korustbase:latest .
devcontainer build --workspace-folder . --image-name korust:latest
rm Dockerfile, *.crt, *.cer, *.ps1, .dev* -r
```
> * 在容器中重新開啟
