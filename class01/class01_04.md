```
docker version
wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\rice01_04 -r -fo -ea si
ni ~\korice\rice01_04 -i d -f | cd
code .
```
> * copy rice01_04
> * 在容器中重新開啟
```
spin templates install --git https://github.com/fermyon/spin --update
spin new --accept-defaults -t http-rust hello-rust
> hello_rust
> hello rust
> (enter)
```