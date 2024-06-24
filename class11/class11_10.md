# class11_02
```
cargo new --lib class11_02
git add .;git commit -m 'first commit'
```
> * copy class11_02\\*
```
git add .;git commit -m 'step01'
cd class11_02/
cargo build
uniffi-bindgen-cpp $(pwd)/src/math.udl
cd /workspaces/korust
mkdir hello_world
cd ./hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
./build/Release/hello_world
cd /workspaces/korust
git add .;git commit -m 'step02'
```
