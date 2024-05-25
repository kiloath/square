```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\korust\rice03_03 -r -fo -ea si
ni ~\korice\korust -i d -f | cd
# cd ~\korice\korust
code .
```
> * copy workspace\korust\\*
> * 在容器中重新開啟
```
cargo leptos new --git leptos-rs/start-axum
* rice03_03
* Yes: Use nightly feature?
cargo leptos watch
cargo leptos build -vv
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
