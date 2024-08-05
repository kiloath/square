# class13_01
```
$korust='korust13'
$koreset=$true
& ~\korice\square\workspace\newrice.ps1
```
> * 在容器中重新開啟
```
rice=rice13_01
salvo new $rice
* salvo_web_site
* unnecessary
cd $rice
cargo run
```
```
docker pull myreg2:5000/cross-rs/x86_64-pc-windows-gnu:0.2.5
docker tag myreg2:5000/cross-rs/x86_64-pc-windows-gnu:0.2.5 ghcr.io/cross-rs/x86_64-pc-windows-gnu:0.2.5
```
```
cargo build --release
./target/release/$rice
cross build --release --target x86_64-pc-windows-gnu
```
```
cd ~\korice\$korust\rice13_01\target\x86_64-pc-windows-gnu\release
copy -r -fo ~\korice\korust13\rice13_01\config\ .
.\rice13_01.exe
start http://127.0.0.1:5800/
```

## 參考
https://github.com/salvo-rs/salvo
