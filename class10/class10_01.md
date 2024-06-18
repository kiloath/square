```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
code .
```
> * F1 -> Dev Containers: Add Dev Container Configurations Files...
> * rust -> bookworm
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
> * 解決憑證問題
> * 討論vscode權限問題

* 優化images重複使用
```
docker build -t korustbase:latest .
```
* devcontainer.json
```
"image": "korustbase:latest",
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
cargo new rice01_01
cd rice01_01
cargo run
```
> * 修改Dockerfile, 重新建置Conan環境
```
docker rm korust -f
docker rmi korustbase
docker build -t korustbase:latest .
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
cd ..
conan profile detect
mkdir hello_world
cd hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
```
