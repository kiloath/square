```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\korust -r -fo -ea si
ni ~\korice\korust -i d -f | cd
# cd ~\korice\korust
code .
```
> * copy workspace\korust_build\\*
```
export_crt.ps1
docker build -t korustbase:latest .
devcontainer build --workspace-folder . --image-name korust:latest
rm Dockerfile, *.crt, *.cer, *.ps1, .dev* -r
```
> * 在容器中重新開啟
```
cargo new rice01_01
cd rice01_01
cargo run
cross build --release --target x86_64-pc-windows-gnu
```
> * target\x86_64-pc-windows-gnu\release\rice01_01.exe
