# class11_05
* https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html
```
w=/workspaces/korust
cd $w/examples2/tutorial/consuming_packages/conanfile_py
conan install . --output-folder build --build=missing
cd build
source conanbuild.sh
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
source deactivate_conanbuild.sh


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
