```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
code .
```
> * copy class10\\class10_01\\*
```
cd $w\.devcontainer
.\export_crt.ps1
docker rm korust -f
docker rmi korustbase
docker build -t korustbase:latest .
rm Dockerfile, *.crt, *.cer, *.ps1
```
> * F1 -> Dev Conainters: Rebuild and Reopen in Container
```
cargo new rice10_02
cd rice10_02
cargo run
```
```
cd ..
mkdir hello_world
cd hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
```