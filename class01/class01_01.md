```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
code .
```
> * copy workspace\korust_build\\*
```
cd ~\korice\korust\.devcontainer
export_crt.ps1
docker build --network=host --no-cache -t korustbase:latest .
devcontainer build --no-cache --workspace-folder . --image-name korust:latest
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
