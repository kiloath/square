# class12_03
```
$w='~\korice\korust12';cd $w;code .
```
> * 在容器中重新開啟
```
cd /workspaces/korust12
cargo leptos new --git https://github.com/leptos-rs/start-axum-workspace/
* rice12_03
* No: Use nightly feature?
cd rice12_03/
git add .;git commit -m 'first commit'
cargo leptos serve
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
