```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
code .
```
> * F1 -> Dev Containers: Add Dev Container Configurations Files...
> * rust -> bookworm
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
> * copy class10\\class10_01\\*
> * 使用 Dockerfile
```
docker build -t korustbase:latest .
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
cargo new rice10_01
cd rice10_01
cargo run
```
* 新增 Conan 環境
```
sudo apt update
sudo su
apt install pipx
pipx ensurepath
pipx install conan
conan profile detect
mkdir hello_world
cd hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
cd build/
cmake ..
cmake --build .
./hello_world
cd ..
conan build .
./build/Release/hello_world
```
> * 修改Dockerfile
```
cd $w/.devcontainer
docker rm korust -f
docker rmi korustbase
docker build -t korustbase:latest .
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
conan profile detect
mkdir hello_world
cd hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
```
> * 修改Dockerfile
