```
docker version
# wsl --set-default rancher-desktop
cd ~ ; rm ~\korice\korust -r -fo -ea si
ni ~\korice\korust -i d -f | cd
# cd ~\korice\korust
code .
```
> * copy workspace\korust\\*
> * 在容器中重新開啟
```
rm Cargo.*
cargo leptos new --git leptos-rs/start-axum
* rice03_04
* Yes: Use nightly feature?
cd rice03_04
cargo leptos build
cargo leptos watch
```
* Cargo.toml
```
leptos = { version = "0.6", features = ["nightly", "experimental-islands"] }
leptos_axum = { version = "0.6, optional = true, features = [
  "experimental-islands",
] }
```
* src/lib.rs
```
// leptos::mount_to_body(App)
leptos::leptos_dom::HydrationCtx::stop_hydrating();
```
* settings.json
```
"rust-analyzer.cargo.features": [
    "ssr",
    "hydrate"
]
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
