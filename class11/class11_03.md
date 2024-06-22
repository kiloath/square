# class11_03
* https://docs.conan.io/2/tutorial/consuming_packages/build_simple_cmake_project.html
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
cd examples2/tutorial/consuming_packages/simple_cmake_project
conan install . --output-folder=build --build=missing
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
```
