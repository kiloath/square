* egui - web
* https://github.com/emilk/egui
```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\koegui -r -fo
ni ~\korice\koegui -i d -f | cd
# cd ~\korice\koegui
git clone https://github.com/emilk/egui.git
cd egui
cargo run --relase -p egui_demo_app
code .
```
> * 在容器中重新開啟
> * rust -> bullseye
> * https://github.com/emilk/egui/tree/master/web_demo
```
scripts/build_demo_web.sh
scripts/start_server.sh
```
> * 瀏覽網站
> * crates\egui_demo_app\Cargo.toml
```
wasm-bindgen="0.2.92"
```
```
> cargo build --release -p egui_demo_app --quiet --lib --target wasm32-unknown-unknown --no-default-features --features web_app,wgpu
> wasm-bindgen ".\target\wasm32-unknown-unknown\release\egui_demo_app.wasm" --out-dir web_demo --out-name egui_demo_app --no-modules --no-typescript
cd .\web_demo\
basic-http-server --addr 127.0.0.1:8888
```
