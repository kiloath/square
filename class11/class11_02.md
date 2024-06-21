# class11_02
```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
git init -q
code .
```
> * copy workspace\\korust\\.devcontainer
> * 在容器中重新開啟
```
cargo new --lib class11_02
git add .;git commit -m 'first commit'
cd class11_02/
```
> * copy class11_02\\*
```
git add .;git commit -m 'step01'
cargo build
cargo install uniffi-bindgen-cpp --git https://github.com/NordSecurity/uniffi-bindgen-cpp --tag v0.5.0+v0.25.0
uniffi-bindgen-cpp $(pwd)/src/math.udl
cd /workspaces/korust
mkdir hello_world
cd ./hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
git add .;git commit -m 'step02'
```
