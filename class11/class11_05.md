# class11_04
* https://docs.conan.io/2/tutorial/consuming_packages/different_configurations.html
```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
git init -q
code .
```
> * copy workspace\\korust\\.devcontainer
> * 在容器中重新開啟
```
git clone https://github.com/conan-io/examples2.git
cd examples2/tutorial/consuming_packages/different_configurations
conan config home
cat $(conan config home)/profiles/default
conan profile list
conan profile detect --name debug
conan profile path default
conan profile path debug
code $(conan profile path debug)
```
build_type=Debug
```
conan profile show
conan profile show -pr debug
conan install . --output-folder=build --build=missing
conan install . --output-folder=build --build=missing --profile=debug
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build .
./compressor
```
