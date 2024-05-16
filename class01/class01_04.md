```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\rice01_04 -r -fo -ea si
ni ~\korice\rice01_04 -i d -f | cd
# cd ~\korice\rice01_04
iwr -OutFile v0.3.6.zip https://github.com/seanmonstar/warp/archive/refs/tags/v0.3.6.zip
Expand-Archive -Path v0.3.6.zip -DestinationPath .
code .
```
> * copy rice01_04
> * 在容器中重新開啟
```
cd warp
cargo run --example hello
curl http://localhost:3030/hi
cargo run --example websockets_chat
```
```
start http://localhost:3030/hi
```