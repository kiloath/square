# class11_04
* https://docs.conan.io/2/tutorial/consuming_packages/use_tools_as_conan_packages.html
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
cd examples2/tutorial/consuming_packages/tool_requires
conan install . --output-folder=build --build=missing
cd build
source conanbuild.sh
cmake --version
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
source deactivate_conanbuild.sh
cmake --version
```
