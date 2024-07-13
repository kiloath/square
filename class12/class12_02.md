# class12_02

~\korice\square\workspace\korust12\korust_build\.devcontainer\rebuild_korust.ps1
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
