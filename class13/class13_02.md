# class13_02
```
$korust = 'korust13'
$w="~\korice\$korust";cd $w;code .
```
> * 在容器中重新開啟
```
salvo new rice13_02
* salvo_web_site
* sea-orm
* sqlite
cd rice13_02/
cargo run
```
```
cargo build --release
./target/release/rice13_02
cross build --release --target x86_64-pc-windows-gnu
```
```
cargo leptos new --git leptos-rs/start-axum
* rice12_02
* No: Use nightly feature?
cd rice12_02/
git add .;git commit -m 'first commit'
cargo leptos watch
```
> * Cargo.toml先改為Cargo.txt
```
cd rice03_03
cargo leptos build --release -vv
```
* Cargo.toml
```
leptos = { version = "0.6", features = ["nightly", "experimental-islands"] }
leptos_actix = { version = "0.6, optional = true, features = [
  "experimental-islands",
] }
```
* src/lib.rs
```
// leptos::mount_to_body(App)
leptos::leptos_dom::HydrationCtx::stop_hydrating();
```
```
cargo leptos watch
start http://localhost:3000
```
* app.lib
```
#[island]
fn HomePage() -> impl IntoView {
```
## 參考
https://github.com/salvo-rs/salvo
