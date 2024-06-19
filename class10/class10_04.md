```
docker rm korust -f
docker rmi korustbase
docker rmi korust
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
```
> * copy class10\\class10_01\\*
```
cd .\.devcontainer\
.\export_crt.ps1
docker build -t korustbase:latest .
devcontainer build --no-cache --workspace-folder .. --image-name korust:latest
docker run --init -it --rm korust /bin/bash
cargo install-update -l
conan --version
docker version
```

