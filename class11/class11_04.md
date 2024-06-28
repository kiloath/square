# class11_04
* https://docs.conan.io/2/tutorial/consuming_packages/different_configurations.html
```
w=/workspaces/korust
cd $w/examples2/tutorial/consuming_packages/different_configurations
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
cd $w/examples2/tutorial/consuming_packages/different_configurations
rm -r build/
conan install . --output-folder=build --build=missing --settings=build_type=Debug
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build .
./compressor
cd $w/examples2/tutorial/consuming_packages/different_configurations
rm -r build/
conan install . --output-folder=build --build=missing --options=zlib/1.2.11:shared=True
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
find /usr -name 'libz.so.*'
find ~/.conan2 -name 'libz.so.*'
source conanrun.sh
./compressor
source deactivate_conanrun.sh
./compressor
```
