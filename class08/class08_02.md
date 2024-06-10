```
cd ~ ; rm ~\korice\koleptos -r -fo
ni ~\korice\koleptos -i d -f | cd
code .
```
> * copy workspace\\koleptos\\*
> * 在容器中重新開啟
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