```
cd ~ ; rm ~\korice\koleptos -r -fo
ni ~\korice\koleptos -i d -f | cd
git clone https://github.com/MoonKraken/rusty_llama.git
cd .\rusty_llama\
npm install
npm install -D tailwindcss
npx tailwindcss -i ./input.css -o ./style/output.css
cargo leptos build -vv
code .
```
> * crates\egui_demo_app\Cargo.toml
```
wasm-bindgen="0.2.92"
```
```
cargo leptos new --git leptos-rs/start
* Project Name: rice08_02
* Use nightly features? No
cd rice08_02
cargo leptos serve
git init -q;git add .;git commit -m 'first commit'
```
 * F1->Open Workspace settings(JSON)
* .vscode\settings.json
```
{
    "rust-analyzer.cargo.features": [
    "ssr",
    ]
}
```
* settings.json
```
"rust-analyzer.cargo.features": [
    "ssr",
    "hydrate"
]
```
```
cargo add serde -F derive
```