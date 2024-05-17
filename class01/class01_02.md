```
docker version
# wsl --set-default rancher-desktop
cd ~\korice\korust
code .
```
> * 在容器中重新開啟
* new Cargo.toml
```
[workspace]
members = ["rice*"]
resolver = "2"
```
```
cargo run
```
> * main.rs -> Debug main()
> * F1:rust-analyzer: Generate launch configuration
> * Debug
```
cargo new rice01_02
cargo run --bin rice01_02
cross build --release --target x86_64-pc-windows-gnu
```
* windows
```
target\x86_64-pc-windows-gnu\release\rice01_01.exe
target\x86_64-pc-windows-gnu\release\rice01_02.exe
```
> * rice01_02\main.rs -> Debug main()
> * F1:rust-analyzer: Generate launch configuration
> * Debug