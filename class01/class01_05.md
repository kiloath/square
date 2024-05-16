```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\rice01_05 -r -fo -ea si
ni ~\korice\rice01_05 -i d -f | cd
# cd ~\korice\rice01_05
code .
```
> * copy rice01_05
> * 在容器中重新開啟
```
cargo init --name hello_rust
cd warp
cargo run --example hello
curl http://localhost:3030/hi
cargo run --example websockets_chat
```
```
start http://localhost:3030/hi
```