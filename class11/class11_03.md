# class11_03
* https://docs.conan.io/2/tutorial/consuming_packages/use_tools_as_conan_packages.html
```
w=/workspaces/korust
cd ${w}/examples2/tutorial/consuming_packages/tool_requires
conan install . --output-folder=build --build=missing
cd build
cmake --version
source conanbuild.sh
cmake --version
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
source deactivate_conanbuild.sh
cmake --version
```
