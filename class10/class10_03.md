```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
code .
```
> * copy class10\\class10_03\\*
> * 在容器中重新開啟
```
mkdir hello_world
cd hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
```
* 加上featuer: Docker-in-Docker
```
cd $w
devcontainer build --no-cache --workspace-folder . --image-name korust:latest
```
* .devcontainer.json
```
"image": "korust:latest",
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
docker version
```
