# class11_02
```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
git init -q;git add .;git commit -m 'first commit'
code .
```
> * copy workspace\\korust\\*
> * 在容器中重新開啟
```
cargo new --lib class11_02
cd class11_02/
```
> * copy Cargo.toml
> * copy src\math.udl
> * copy build.rs
> * copy lib.rs
```
cargo build
cargo install uniffi-bindgen-cpp --git https://github.com/NordSecurity/uniffi-bindgen-cpp --tag v0.5.0+v0.25.0
uniffi-bindgen-cpp ${PWD}\math.udl
ls
cd $w
mkdir hello_world
cd ./hello_world
conan new cmake_exe -d name=hello_world -d version=1.0
conan install .
conan build .
.\build\Releas\hello_world.exe

```
